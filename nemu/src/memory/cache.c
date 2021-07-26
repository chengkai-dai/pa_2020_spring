#include "memory/cache.h"
#include <stdlib.h>

CacheLine cache[1 << LINE_SIZE];

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

    bool hit = false;

    for (int i = 0; i < SET_CAPACITY; ++i)
    {
        CacheLine cur=cache[SET_CAPACITY * sindex + i];
        if (tag == cache[SET_CAPACITY * sindex + i].tag)
        {
            hit = true;
        }
        else
            continue;
    }

    if (hit == false)
    {
        uint32_t data = paddr_read(paddr, len);
        return data;
    }
}

void cache_write(paddr_t paddr, size_t len, uint32_t data)
{
}