#include "memory/cache.h"
#include <stdlib.h>

CacheLine cache[1<<LINE_SIZE];

void init_cache()
{
    for (int i = 0; i < LINE_SIZE; ++i)
        cache[i].valid_bit = 0;
}

uint32_t cache_read(paddr_t paddr, size_t len)
{
    CacheAddr caddr;
    caddr.paddr = paddr;
    uintsindex=(int) caddr.

    return 0;
}

void cache_write(paddr_t paddr, size_t len, uint32_t data)
{
}