#ifndef __CACHE_H__
#define __CACHE_H__

#define LINE_SIZE 1024

#include "memory.h"
typedef struct
{
    uint8_t data_line[64];
    uint32_t tag;
    char valid_bit;
}CacheLine;



#endif 