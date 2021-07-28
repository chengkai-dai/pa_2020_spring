#include "memory/cache.h"
#include <stdlib.h>

static int random_gen(int lower, int upper)
{
    return (rand() % (upper - lower + 1)) + lower;
}

static bool cache_hit(paddr_t paddr, CacheLine *line, int *unvalid_bit_index)
{

    CacheAddr caddr;
    caddr.paddr = paddr;

    int sindex = (int)caddr.set_index;
    uint32_t tag = caddr.tag;

    printf("paddr 0x%x, tag 0x%x, sindex %d\n", paddr, tag, sindex);
    for (int i = 0; i < SET_CAPACITY; ++i)
    {
        if (!cache[SET_CAPACITY * sindex + i].valid_bit){
                *unvalid_bit_index = i;
                break;
        }
    }
                

    //check cache hit or not
    for (int i = 0; i < SET_CAPACITY; ++i)
    {
        CacheLine *cur = &cache[SET_CAPACITY * sindex + i];
        // cache hit
        if (cur->valid_bit && tag == cur->tag)
        {
            line = cur;
            return true;
        }
    }
    return false;
}

void init_cache()
{
    for (int i = 0; i < LINE_SIZE; ++i)
        cache[i].valid_bit = 0;
}

uint32_t cache_read(paddr_t paddr, size_t len)
{
    printf("cache read from 0x%x with %d bytes of data\n", paddr, len);
    CacheAddr caddr;
    caddr.paddr = paddr;

    int sindex = (int)caddr.set_index;
    uint32_t boffset = caddr.offset;

    int unvalid_bit_index = INT32_MAX;

    CacheLine *line = malloc(sizeof(CacheLine));

    if (cache_hit(paddr, line, &unvalid_bit_index))
    {
        uint32_t data = 0;
        memcpy(&data, &line->data_block[boffset], len);
        printf("cache hit during reading, get data 0x%x\n",data);

        free(line);
        return data;
    }

    // if cache not hit, replace the data block to cache
    int replace_index;

    if (unvalid_bit_index != INT32_MAX)
        replace_index = unvalid_bit_index;
    else
        replace_index = random_gen(0, SET_CAPACITY - 1);
    
    printf("replace index %d",replace_index);

    CacheLine *replace_line = &cache[SET_CAPACITY * sindex + replace_index];

    for (int i = 0; i < LINE_DATA; ++i)
    {
        uint32_t replace_data = hw_mem_read(paddr - boffset + i, 1);
        replace_line->data_block[i] = (uint8_t)(replace_data & 0xff);
        replace_line->valid_bit = 1;
    }

    uint32_t data = hw_mem_read(paddr, len);

    free(line);

    return data;
}

void cache_write(paddr_t paddr, size_t len, uint32_t data)
{
    //printf("cache write to 0x%x with %d bytes of 0x%x\n", paddr, len, data);

    //write through to the memory
    hw_mem_write(paddr, len, data);

    CacheAddr caddr;
    caddr.paddr = paddr;

    uint32_t boffset = caddr.offset;

    int unvalid_bit_index = INT32_MAX;

    CacheLine *line = malloc(sizeof(CacheLine));

    if (cache_hit(paddr, line, &unvalid_bit_index))
    {
        printf("cache hit during writing\n");
        memcpy(&line->data_block[boffset], &data, len);
    }
   
    free(line);
}