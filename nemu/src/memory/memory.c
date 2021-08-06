#include "nemu.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "device/mm_io.h"
#include <memory.h>
#include <stdio.h>
#include <stdlib.h>
uint8_t hw_mem[MEM_SIZE_B];

uint32_t hw_mem_read(paddr_t paddr, size_t len)
{
	uint32_t ret = 0;
	memcpy(&ret, hw_mem + paddr, len);
	return ret;
}

void hw_mem_write(paddr_t paddr, size_t len, uint32_t data)
{
	memcpy(hw_mem + paddr, &data, len);
}

uint32_t paddr_read(paddr_t paddr, size_t len)
{
	//printf("cache read from 0x%x with %d bytes of data\n", paddr, len);

	uint32_t ret = 0;
#ifdef CACHE_ENABLED
	ret = cache_read(paddr, len);
#else
	ret = hw_mem_read(paddr, len);
#endif

	// uint32_t test = hw_mem_read(paddr, len);
	// if (ret != test)
	// {
	// 	printf("cache read from 0x%x with %d bytes of data\n", paddr, len);
	// 	printf("output mismatch ret 0x%x ground_truth 0x%x\n", ret, test);
	// 	exit(-1);
	// }
	return ret;
}

void paddr_write(paddr_t paddr, size_t len, uint32_t data)
{
	// printf("cache write to 0x%x with %d bytes of 0x%x\n", paddr, len, data);
#ifdef CACHE_ENABLED
	cache_write(paddr, len, data);
#else
	hw_mem_write(paddr, len, data);
#endif
}

uint32_t laddr_read(laddr_t laddr, size_t len)
{
	if (cpu.cr0.pg && cpu.cr0.pe)
	{
		// printf("read vddr 0x%x pddr 0x%x\n",laddr,page_translate(laddr));
		
		if (laddr + len > (((laddr >> 12) << 12) + (1 << 12)))
		{
			printf("read data cross the page boundary, please implement to handle\n");
			assert(0);
		}
		else
		{
			return paddr_read(page_translate(laddr), len);
		}
	}
	else
		return paddr_read(laddr, len);
}

void laddr_write(laddr_t laddr, size_t len, uint32_t data)
{
	if (cpu.cr0.pg && cpu.cr0.pe)
	{
		// printf("write vddr 0x%x pddr 0x%x\n",laddr,page_translate(laddr));
		if (laddr + len > (((laddr >> 12) << 12) + (1 << 12)))
		{
			printf("write data cross the page boundary, please implement to handle\n");
			assert(0);
		}
		else
		{
			return paddr_write(page_translate(laddr), len, data);
		}
	}
	else
		paddr_write(laddr, len, data);
}

uint32_t vaddr_read(vaddr_t vaddr, uint8_t sreg, size_t len)
{
	assert(len == 1 || len == 2 || len == 4);
#ifdef IA32_SEG
	laddr_t laddr = segment_translate(vaddr, sreg);
	return laddr_read(laddr, len);
#else
	return laddr_read(vaddr, len);
#endif
}

void vaddr_write(vaddr_t vaddr, uint8_t sreg, size_t len, uint32_t data)
{
	assert(len == 1 || len == 2 || len == 4);
#ifdef IA32_SEG
	laddr_t laddr = segment_translate(vaddr, sreg);
	laddr_write(laddr, len, data);
#else
	laddr_write(vaddr, len, data);
#endif
}

void init_mem()
{
	// clear the memory on initiation
	memset(hw_mem, 0, MEM_SIZE_B);

#ifdef TLB_ENABLED
	make_all_tlb();
	init_all_tlb();
#endif

#ifdef CACHE_ENABLED
	init_cache();
#endif
}

uint32_t instr_fetch(vaddr_t vaddr, size_t len)
{
	assert(len == 1 || len == 2 || len == 4);
	return vaddr_read(vaddr, SREG_CS, len);
}

uint8_t *get_mem_addr()
{
	return hw_mem;
}
