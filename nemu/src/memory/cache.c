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
        // if(paddr==0x1000cc){
            
        //     if(SET_CAPACITY * sindex + i==434){
        //         printf("paddr 0x1000cc\n");
        //         printf("line 434 tag bit 0x%x\n", cur.tag);
        //         printf("paddr tag bit 0x%x\n", tag);
        //         printf("line 434 valid bit 0x%x\n", cur.valid_bit);
                
        //     }
        //     if(SET_CAPACITY * sindex + i==435){
        //         printf("paddr 0x1000cc\n");
        //         printf("line 435 tag bit 0x%x\n", cur.tag);
        //         printf("paddr tag bit 0x%x\n", tag);
        //         printf("line 435 valid bit 0x%x\n", cur.valid_bit);
                
        //     }
        // }
        // cache hit
        if (cur.valid_bit && tag == cur.tag)
        {
            *line_index = SET_CAPACITY * sindex + i;
            // if(paddr==0x1000cc){
            // if (*line_index==434)
            // {
            //     printf("line 434 tag bit 0x%x\n", tag);
            //     printf("line 434 valid bit 0x%x\n", tag);
            // }

            // if (*line_index == 435)
            // {
            //     printf("line 435 tag bit 0x%x\n", tag);
            //     printf("line 435 valid bit 0x%x\n", tag);
            // }
            // }
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
    uint32_t low_data = 0, high_data = 0;

    // CacheAddr caddr_end;
    // caddr_end.paddr = paddr+len-1;
    // int sindex_end = (int)caddr_end.set_index;
    // if(sindex_end!=sindex){
    //     printf("sindex_change\n");
    //     exit(-1);
    // }
    switch (flag)
    {
    case 0: // cache miss and cross line (modify two lines of data in cache, read from hw)
        if (paddr + len)
            replace_line_data(line_index, paddr - boffset, tag);
        replace_line_data(line_index + 1, paddr - boffset + LINE_DATA, tag);
        memcpy(&low_data, &cache[line_index].data_block[boffset], low_len);
        memcpy(&high_data, &cache[line_index + 1].data_block[0], len - low_len);
        data = high_data << (8 * low_len) | low_data;
        if (line_index == 435)
        {
            printf("cache miss and cross line in line 435\n");
            printf("cache read from 0x%x with %d bytes of data\n", paddr, len);
        }
        if (line_index == 434)
        {
            printf("cache miss and cross line in line 434\n");
            printf("cache read from 0x%x with %d bytes of data\n", paddr, len);

            printf("cache data 434\n");
            for (int i = 0; i < LINE_DATA; ++i)
            {
                printf("%x ", cache[line_index].data_block[i]);
            }
            printf("cache data 435\n");
            for (int i = 0; i < LINE_DATA; ++i)
            {
                printf("%x ", cache[line_index+1].data_block[i]);
            }
            printf("\n");
        }
        break;
    case 1: // cache miss and within line (modify current line of data, read from hw)
        if (line_index == 435 || line_index == 434)
        {
            printf("cache miss and within line in line %d\n", line_index);
            printf("cache read from 0x%x with %d bytes of data\n", paddr, len);

            printf("change before\n");
            for (int i = 0; i < LINE_DATA; ++i)
            {
                printf("%x ", cache[line_index].data_block[i]);
            }
            printf("\n");
        }
        replace_line_data(line_index, paddr - boffset, tag);
        memcpy(&data, &cache[line_index].data_block[boffset], len);
        if (line_index == 435)
        {
            printf("change after\n");
            for (int i = 0; i < LINE_DATA; ++i)
            {
                printf("%x ", cache[line_index].data_block[i]);
            }
            printf("\n");
        }
        break;
    case 2: // cache hit and cross line (modify next line of data and read from cache)
        replace_line_data(line_index + 1, paddr - boffset + LINE_DATA, tag);
        memcpy(&low_data, &cache[line_index].data_block[boffset], low_len);
        memcpy(&high_data, &cache[line_index + 1].data_block[0], len - low_len);
        data = high_data << (8 * low_len) | low_data;
        if (line_index == 435)
        {
            printf("cache hit and cross line in line 435\n");
            printf("cache read from 0x%x with %d bytes of data\n", paddr, len);
        }
        if (line_index == 434)
        {
            printf(" cache hit and cross line in line 434\n");
            printf("boffset %d\n", boffset);

            printf("cache read from 0x%x with %d bytes of data\n", paddr, len);

            printf("cache data 434 tag 0x%x\n",cache[line_index].tag);
            for (int i = 0; i < LINE_DATA; ++i)
            {
                printf("%x ", cache[line_index].data_block[i]);
            }
            printf("\n");
            printf("cache data 435\n");
            for (int i = 0; i < LINE_DATA; ++i)
            {
                printf("%x ", cache[line_index+1].data_block[i]);
            }
            printf("\n");
            printf("hw data from 0x%x\n",paddr - boffset+LINE_DATA);
            for (int i = 0; i < LINE_DATA; ++i)
            {
                printf("%x ", hw_mem_read(paddr - boffset + i+LINE_DATA, 1));
            }
            printf("\n");
        }
        break;
    default:
        memcpy(&data, &cache[line_index].data_block[boffset], len);
        if (line_index == 435)
        {
            printf("cache hit and within line in line 435\n");
            printf("cache read from 0x%x with %d bytes of data\n", paddr, len);
        }
        if (data == 0x89 && paddr == 0x1000cc)
        {
            printf("line index %d\n", line_index);
            printf("boffset %d\n", boffset);
            printf("tag 0x%x\n", tag);
            printf("sindex %d\n", sindex);
            printf("line start %d\n", SET_CAPACITY * sindex);
            printf("cache previous line data %d\n",line_index-1);
            printf("cache previous line tag 0x%x\n",cache[line_index-1].tag);
            for (int i = 0; i < LINE_DATA; ++i)
            {
                printf("%x ", cache[line_index-1].data_block[i]);
            }
            printf("\n");
            printf("cache data\n");
        
            for (int i = 0; i < LINE_DATA; ++i)
            {
                printf("%x ", cache[line_index].data_block[i]);
            }
            printf("\n");
            printf("hw data from 0x%x\n", paddr - boffset);
            for (int i = 0; i < LINE_DATA; ++i)
            {
                printf("%x ", hw_mem_read(paddr - boffset + i, 1));
            }
            printf("\n");
        }
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

    if (line_index == 435)
    {
        printf("cache write to 0x%x with %d bytes of 0x%x\n", paddr, len, data);
    }

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