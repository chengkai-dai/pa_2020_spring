#include "cpu/instr.h"

make_instr_func(pop_r_v)
{
    int len = 1;

    // 1. set the content on stack pointer to the register
    // 2. collect the space for the popped value

    // step 1

    //get the content on stack memory
    OPERAND r, sr;
    sr.type = OPR_MEM;
    sr.addr = cpu.esp;
    sr.data_size = data_size;
    operand_read(&sr);

    r.type = OPR_REG;
    r.addr = opcode & 0x7;
    r.data_size = data_size;
    r.val = sr.val;
    operand_write(&r);

    // step 2

    cpu.esp += data_size / 8;

    return len;
}
