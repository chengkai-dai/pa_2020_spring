#ifndef __CACHE_H__
#define __CACHE_H__

#define LINE_SIZE 10
#define BLOCK_SIZE 6
#define SET_SIZE 3

#include "nemu.h"

typedef struct
{
    uint8_t data_line[64];
    uint32_t tag;
    char valid_bit;
} CacheLine;

typedef struct{

    uint32_t offset:BLOCK_SIZE;
    uint32_t set_index: (LINE_SIZE-SET_SIZE);
    uint32_t tag:(32-(LINE_SIZE-SET_SIZE)-BLOCK_SIZE); 

}CacheAddr

void init_cache();

uint32_t cache_read(paddr_t paddr, size_t len);

void cache_write(paddr_t paddr, size_t len, uint32_t data);

#endif