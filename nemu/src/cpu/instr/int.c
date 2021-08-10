#include "cpu/instr.h"
#include <stdlib.h>

make_instr_func(int_i_b)
{
#ifdef IA32_INTR
    int len = 1;

    OPERAND imm;

    imm.type = OPR_IMM;
    imm.sreg = SREG_CS;
    imm.data_size = 8;
    imm.addr = eip + 1;

    operand_read(&imm);

    raise_sw_intr(imm.val);

    print_asm_1("int", "", len, &imm);

    // uint32_t idt_base = cpu.idtr.base;

    // uint32_t addr = idt_base + imm.val * sizeof(GateDesc);
    // GateDesc gd;
    // gd.val[0] = laddr_read(addr, 4);
    // gd.val[1] = laddr_read(addr + 4, 4);

    // assert(gd.present == 1 && gd.pad0 == 0 && gd.system == 0);

    // SegReg sr;
    // sr.val = gd.selector;

    // uint32_t offset = gd.offset_31_16 << 16 | gd.offset_15_0;

    // uint32_t int_entry = cpu.segReg[sr.index].base + offset;

    // //push eflags

    // cpu.esp -= 4;

    // OPERAND stack_op;
    // stack_op.type = OPR_MEM;
    // stack_op.addr = cpu.esp;
    // stack_op.data_size = data_size;
    // stack_op.val = cpu.eflags.val;
    // stack_op.sreg = SREG_SS;

    // operand_write(&stack_op);

    // //push eip (should add 2 to skip the int)

    // cpu.esp -= 4;

    // stack_op.addr = cpu.esp;
    // stack_op.val = cpu.eip + 2;

    // operand_write(&stack_op);

    // //push cs 

    // cpu.esp -= 2;
    // stack_op.addr = cpu.esp;
    // stack_op.data_size = 16;

    // stack_op.val = gd.selector;

    // operand_write(&stack_op);

    // printf("Load CS selector 0x%x\n",sr.val);
    // printf("Load CS:EIP 0x%x\n",cpu.eip);
    // printf("Load EFLAGS 0x%x\n",cpu.eflags.val);


    // print_asm_1("int", "", len, &imm);

    // cpu.eip = int_entry;

    // cpu.eflags.IF = 0;

    return 0;

#else
    printf("please implement op int\n");
    assert(0);
    
#endif
}
