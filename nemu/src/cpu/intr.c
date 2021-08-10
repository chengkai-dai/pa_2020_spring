#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"
#include "trap.h"

void raise_intr(uint8_t intr_no)
{
#ifdef IA32_INTR
	// printf("Please implement raise_intr(0x%x\n)",intr_no);
	// assert(0);

	uint32_t idt_base = cpu.idtr.base;

    uint32_t addr = idt_base + intr_no * sizeof(GateDesc);
    GateDesc gd;
    gd.val[0] = laddr_read(addr, 4);
    gd.val[1] = laddr_read(addr + 4, 4);

    assert(gd.present == 1 && gd.pad0 == 0 && gd.system == 0);

    SegReg sr;
    sr.val = gd.selector;

    uint32_t offset = gd.offset_31_16 << 16 | gd.offset_15_0;

    uint32_t int_entry = cpu.segReg[sr.index].base + offset;

    //push eflags

    cpu.esp -= 4;

    OPERAND stack_op;
    stack_op.type = OPR_MEM;
    stack_op.addr = cpu.esp;
    stack_op.data_size = data_size;
    stack_op.val = cpu.eflags.val;
    stack_op.sreg = SREG_SS;

    operand_write(&stack_op);

    //push eip (should add 2 to skip the int)

    cpu.esp -= 4;

    stack_op.addr = cpu.esp;
    stack_op.val = cpu.eip;

    operand_write(&stack_op);

    //push cs 

    cpu.esp -= 2;
    stack_op.addr = cpu.esp;
    stack_op.data_size = 16;

    stack_op.val = gd.selector;

    operand_write(&stack_op);

    cpu.eip = int_entry;

	if(gd.type==0xF)//TRAP_GATE_32=0xF
    	cpu.eflags.IF = 0;

#endif
}

void raise_sw_intr(uint8_t intr_no)
{
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
    
}
