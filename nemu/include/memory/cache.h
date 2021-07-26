#ifndef __CACHE_H__
#define __CACHE_H__

#define LINE_BITS 10
#define BLOCK_BITS 6
#define SET_BITS 3

#define SET_CAPACITY 1<<(LINE_BITS - SET_BITS)
#define LINE_SIZE 1<<LINE_BITS

#include "nemu.h"

typedef struct
{
    uint8_t data_line[64];
    uint32_t tag;
    char valid_bit;
} CacheLine;

typedef union
{
    struct
    {
        uint32_t offset : BLOCK_BITS;
        uint32_t set_index : (LINE_BITS - SET_BITS);
        uint32_t tag : (32 - (LINE_BITS - SET_BITS) - BLOCK_BITS);
    };

    uint32_t paddr;

} CacheAddr;

void init_cache();

uint32_t cache_read(paddr_t paddr, size_t len);

void cache_write(paddr_t paddr, size_t len, uint32_t data);

#endif