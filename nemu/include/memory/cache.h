#ifndef __CACHE_H__
#define __CACHE_H__

#define LINE_SIZE 1024
#define BLOCK_SIZE 6
#define SET_SIZE 3

#include "nemu.h"

typedef struct
{
    uint8_t data_line[64];
    uint32_t tag;
    char valid_bit;
} CacheLine;

void init_cache();

uint32_t cache_read(paddr_t paddr, size_t len);

void cache_write(paddr_t paddr, size_t len, uint32_t data);

#endif