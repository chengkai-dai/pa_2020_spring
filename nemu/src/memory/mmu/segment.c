#include "cpu/cpu.h"
#include "memory/memory.h"

// return the linear address from the virtual address and segment selector
uint32_t segment_translate(uint32_t offset, uint8_t sreg)
{
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */
#ifdef IA32_SEG
	//printf("sreg 0x%x\n",sreg);
	assert(sreg<6);
	
	uint32_t base_addr = cpu.segReg[sreg].base;

	return base_addr + offset;
#else
	return 0;
#endif
}

// load the invisible part of a segment register
void load_sreg(uint8_t sreg)
{
	/* TODO: load the invisibile part of the segment register 'sreg' by reading the GDT.
	 * The visible part of 'sreg' should be assigned by mov or ljmp already.
	 */
#ifdef IA32_SEG
	uint32_t addr = cpu.gdtr.base + cpu.segReg[sreg].index * sizeof(SegDesc);

	SegDesc sd;

	sd.val[0] = laddr_read(addr, 4);

	sd.val[1] = laddr_read(addr + 4, 4);

	cpu.segReg[sreg].type = sd.type;

	cpu.segReg[sreg].privilege_level = sd.privilege_level;

	cpu.segReg[sreg].soft_use = sd.soft_use;

	cpu.segReg[sreg].base = sd.base_31_24 << 24 | sd.base_23_16 << 16 | sd.base_15_0;

	cpu.segReg[sreg].limit = sd.limit_19_16 << 16 | sd.limit_15_0;

	assert(cpu.segReg[sreg].base == 0);

	assert(cpu.segReg[sreg].limit == 0xFFFFF);
#else
	
#endif
}
