#include "cpu/instr.h"

make_instr_func(leave)
{
    printf("eax value 0x%x\n",cpu.gpr[0]._32);
    printf("ecx value 0x%x\n",cpu.gpr[1]._32);
    printf("\n");

    int len = 1;
    // 1. set the esp value (stack pointer) to ebp value (frame pointer)
    // 2. pop the stack pointer value to ebp

    // step 1
    OPERAND r;
    r.type = OPR_REG;
    r.addr = 0x4;
    r.data_size = data_size;
    r.val = cpu.gpr[5]._32;
    operand_write(&r);

    // step 2
    // (1) set the ebp value to value on stack pointer
    OPERAND sr;
    sr.type = OPR_MEM;
    sr.addr = cpu.esp;
    sr.data_size = data_size;
    operand_read(&sr);

    OPERAND br;
    br.type = OPR_REG;
    br.addr = 0x5;
    br.data_size = data_size;
    br.val = sr.val;
    operand_write(&br);

    //(2) collect the space for the popped value
    cpu.esp += data_size / 8;

    return len;
}