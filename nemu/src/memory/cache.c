#include "memory/cache.h"
#include <stdlib.h>

CacheLine cache[LINE_SIZE];

void init_cache()
{
    cache = (CacheLine *)malloc(sizeof(CacheLine) * LINE_SIZE);
}

uint32_t cache_read(paddr_t paddr, size_t len)
{

    return 0;
}

void cache_write(paddr_t paddr, size_t len, uint32_t data)
{
}