#include "memory/cache.h"
#include <stdlib.h>

static int random_gen(int lower, int upper)
{
    return (rand() % (upper - lower + 1)) + lower;
}

static int get_unvalid_line_index(int set_index)
{
    int unvalid_line_index;
    int unvalid_bit_index = INT32_MAX;
    for (int i = 0; i < SET_CAPACITY; ++i)
    {
        if (!cache[SET_CAPACITY * set_index + i].valid_bit)
        {
            unvalid_bit_index = i;
            break;
        }
    }

    if (unvalid_bit_index != INT32_MAX)
        unvalid_line_index = SET_CAPACITY * set_index + unvalid_bit_index;
    else
        unvalid_line_index = SET_CAPACITY * set_index + random_gen(0, SET_CAPACITY - 1);

    return unvalid_line_index;
}

static bool cache_hit(paddr_t paddr, int *line_index)
{

    CacheAddr caddr;
    caddr.paddr = paddr;

    int sindex = (int)caddr.set_index;
    uint32_t tag = caddr.tag;

    //check cache hit or not
    for (int i = 0; i < SET_CAPACITY; ++i)
    {
        CacheLine cur = cache[SET_CAPACITY * sindex + i];

        if (cur.valid_bit && tag == cur.tag)
        {
            *line_index = SET_CAPACITY * sindex + i;
            return true;
        }
    }
    return false;
}

static void replace_line_data(uint32_t line_index, uint32_t start_paddr, uint32_t tag)
{
    for (int i = 0; i < LINE_DATA; ++i)
    {
        uint32_t replace_data = hw_mem_read(start_paddr + i, 1);
        cache[line_index].data_block[i] = (uint8_t)(replace_data & 0xff);
        cache[line_index].tag = tag;
        cache[line_index].valid_bit = 1;
    }
}

void init_cache()
{
    for (int i = 0; i < LINE_SIZE; ++i)
        cache[i].valid_bit = 0;
}

uint32_t cache_read(paddr_t paddr, size_t len)
{
    uint32_t data = 0;

    CacheAddr caddr;
    caddr.paddr = paddr;
    int sindex = (int)caddr.set_index;
    uint32_t boffset = caddr.offset;
    uint32_t tag = caddr.tag;

    //locate the line to read (or modify)
    int line_index = INT32_MAX;
    bool hit = cache_hit(paddr, &line_index);
    if (!hit)
        line_index = get_unvalid_line_index(sindex);

    //detct cross line cross
    bool within_line = (boffset + len) <= LINE_DATA;

    //detct set cross
    CacheAddr caddr_end;
    caddr_end.paddr = paddr + len - 1;
    int sindex_end = caddr_end.set_index;
    bool within_set = sindex_end == sindex;

    uint32_t low_data = 0, high_data = 0;
    int low_len = LINE_DATA - boffset;
    int high_data_line_index = INT32_MAX;

    uint8_t flag = hit << 2 | within_line << 1 | within_set;
    switch (flag)
    {
    case 0: //cache miss and cross line and cross set
            //low data -> modify current line of data, read from the modified line
            //high data -> check the correspond line of data, if not exist, then modify.
        replace_line_data(line_index, paddr - boffset, tag);
        hit = cache_hit(paddr - boffset + LINE_DATA, &high_data_line_index);
        if (!hit)
            high_data_line_index = get_unvalid_line_index(sindex_end);
        replace_line_data(high_data_line_index, paddr - boffset + LINE_DATA, tag);
        memcpy(&low_data, &cache[line_index].data_block[boffset], low_len);
        memcpy(&high_data, &cache[high_data_line_index].data_block[0], len - low_len);
        data = high_data << (8 * low_len) | low_data;
        break;

    case 1: //cache miss and cross line and within set
            //low data -> modify current line of data, read from the modified line
            //high data -> check the next line of data, if not exist, then modify.
        replace_line_data(line_index, paddr - boffset, tag);
        replace_line_data(line_index + 1, paddr - boffset + LINE_DATA, tag);
        memcpy(&low_data, &cache[line_index].data_block[boffset], low_len);
        memcpy(&high_data, &cache[line_index + 1].data_block[0], len - low_len);
        data = high_data << (8 * low_len) | low_data;
        break;

    case 3: //cache miss and within line and within set
            //modify current line of data, read from the modified line
        replace_line_data(line_index, paddr - boffset, tag);
        memcpy(&data, &cache[line_index].data_block[boffset], len);
        break;

    case 4: //cache hit and cross line and cross set
            //low data -> read from current line
            //high_data-> check the correspond line of data, if not exist, then modify.
            //printf("cache hit and cross line and cross set\n");
            hit = cache_hit(paddr - boffset + LINE_DATA, &high_data_line_index);
            if (!hit)
                high_data_line_index = get_unvalid_line_index(sindex_end);
            replace_line_data(high_data_line_index, paddr - boffset + LINE_DATA, tag);
            memcpy(&low_data, &cache[line_index].data_block[boffset], low_len);
            memcpy(&high_data, &cache[high_data_line_index].data_block[0], len - low_len);
            data = high_data << (8 * low_len) | low_data;
            break;
    case 5: //cache hit and cross line and within set
            //low data -> read from current line
            //high_data-> check the next line of data, if not exist, then modify.

            replace_line_data(line_index + 1, paddr - boffset + LINE_DATA, tag);
            memcpy(&low_data, &cache[line_index].data_block[boffset], low_len);
            memcpy(&high_data, &cache[line_index + 1].data_block[0], len - low_len);
            data = high_data << (8 * low_len) | low_data;
            break;
    
    case 7: //cache hit and within line and within set
            //direct read from current line
            memcpy(&data, &cache[line_index].data_block[boffset], len);
            break;
    default:
            printf("cache hit %d\n",hit);
            printf("within line %d\n",within_line);
            printf("within set %d\n",within_set);
            printf("This case is not gonna happen\n");
            exit(-1);
            break;
    }

    return data;
}

void cache_write(paddr_t paddr, size_t len, uint32_t data)
{

    //write through to the memory
    hw_mem_write(paddr, len, data);

    CacheAddr caddr;
    caddr.paddr = paddr;
    uint32_t boffset = caddr.offset;
    int sindex = caddr.set_index;

    int line_index = INT32_MAX;
    bool hit = cache_hit(paddr, &line_index);
    if (!hit)
        line_index = get_unvalid_line_index(sindex);

    bool within_line = (boffset + len) <= LINE_DATA;
    uint8_t flag = hit << 1 | within_line;

    switch (flag)
    {
    case 0: // cache miss and cross line (do nothing)
        break;
    case 1: // cache miss and within line (do nothing)
        break;
    case 2: // cache hit and cross line (modify next line of data and read from cache)
        printf("CACHE WRITE CASE: cache hit and cross line not implemented\n");
        exit(-1);
        break;
    default: // cache hit and within line  (modify the corresponding cache)
        memcpy(&cache[line_index].data_block[boffset], &data, len);
        break;
    }
}