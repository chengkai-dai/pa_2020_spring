#include "memory/cache.h"
#include <stdlib.h>

static int random_gen(int lower, int upper)
{
    return (rand() % (upper - lower + 1)) + lower;
}

static bool cache_hit(paddr_t paddr, int *line_index, int *unvalid_bit_index)
{

    CacheAddr caddr;
    caddr.paddr = paddr;

    int sindex = (int)caddr.set_index;
    uint32_t tag = caddr.tag;

    for (int i = 0; i < SET_CAPACITY; ++i)
    {
        if (!cache[SET_CAPACITY * sindex + i].valid_bit)
        {
            *unvalid_bit_index = i;
            break;
        }
    }

    //check cache hit or not
    for (int i = 0; i < SET_CAPACITY; ++i)
    {
        CacheLine cur = cache[SET_CAPACITY * sindex + i];
        // cache hit
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
    CacheAddr caddr;
    caddr.paddr = paddr;

    int sindex = (int)caddr.set_index;
    uint32_t boffset = caddr.offset;
    uint32_t tag = caddr.tag;
    int unvalid_bit_index = INT32_MAX;
    int line_index = INT32_MAX;

    bool hit = cache_hit(paddr, &line_index, &unvalid_bit_index);
    bool within_line = (boffset + len) <= LINE_DATA;
    uint8_t flag = hit << 1 | within_line;

    uint32_t data = 0;

    if (!hit)
    {
        if (unvalid_bit_index != INT32_MAX)
            line_index = SET_CAPACITY * sindex + unvalid_bit_index;
        else
            line_index = SET_CAPACITY * sindex + random_gen(0, SET_CAPACITY - 1);
    }

    int low_len = LINE_DATA - boffset;
    uint32_t low_data=0, high_data=0;
    switch (flag)
    {
    case 0: // cache miss and cross line (modify two lines of data in cache, read from hw)
        replace_line_data(line_index, paddr - boffset, tag);
        replace_line_data(line_index + 1, paddr - boffset + LINE_DATA, tag);
        memcpy(&low_data, &cache[line_index].data_block[boffset], low_len);
        memcpy(&high_data, &cache[line_index + 1].data_block[0], len - low_len);
        data = high_data << (8 * low_len) | low_data;
        break;
    case 1: // cache miss and within line (modify current line of data, read from hw)
        replace_line_data(line_index, paddr - boffset, tag);
        memcpy(&data, &cache[line_index].data_block[boffset], len);
        break;
    case 2: // cache hit and cross line (modify next line of data and read from cache)
        replace_line_data(line_index + 1, paddr - boffset + LINE_DATA, tag);
        memcpy(&low_data, &cache[line_index].data_block[boffset], low_len);
        memcpy(&high_data, &cache[line_index + 1].data_block[0], len - low_len);
        data = high_data << (8 * low_len) | low_data;
        break;
    default:
        memcpy(&data, &cache[line_index].data_block[boffset], len);
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
    int unvalid_bit_index = INT32_MAX;
    int line_index = INT32_MAX;

    bool hit = cache_hit(paddr, &line_index, &unvalid_bit_index);
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
    default:// cache hit and within line  (modify the corresponding cache)
        memcpy(&cache[line_index].data_block[boffset], &data, len);
        break;
    }
}