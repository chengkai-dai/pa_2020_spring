#include "memory/cache.h"
#include <stdlib.h>

CacheLine cache[LINE_SIZE];

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
        CacheLine cur = cache[SET_CAPACITY * sindex + i];
        if (cur.valid_bit && tag == cur.tag)
        {
            uint32_t data = 0;
            data = memcpy(&data, cur.data_line[boffset], len);
            return data;
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