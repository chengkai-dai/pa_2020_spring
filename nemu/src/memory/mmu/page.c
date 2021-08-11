#include "cpu/cpu.h"
#include "memory/memory.h"

// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr)
{
#ifndef TLB_ENABLED
	return page_walk(laddr);

#else
	return tlb_read(laddr) | (laddr & PAGE_MASK);
	;
#endif
}

paddr_t page_walk(laddr_t laddr)
{
#ifdef IA32_PAGE
	pa_t addr = {.val = (uint32_t)laddr};

	uint32_t pdir_index = addr.pdir_index;

	PDE pdir;
	paddr_t pdir_base = cpu.cr3.page_directory_base << 12;

	pdir.val = paddr_read(pdir_base + pdir_index * 4, 4);

	if(pdir.present != 1){
		printf("pdir_index 0x%x\n",pdir_index);
		printf("pdir.val 0x%x\n",pdir.val);
	}
	assert(pdir.present == 1);

	PTE pt;
	paddr_t pt_base = pdir.page_frame << 12;
	uint32_t pt_index = addr.pt_index;
	pt.val = paddr_read(pt_base + pt_index * 4, 4);

	assert(pt.present == 1);
	uint32_t ppn = pt.page_frame;

	return ppn << 12 | addr.page_offset;
#else
	printf("please implement page walk\n");
	assert(0);
	return 0;

#endif
}
