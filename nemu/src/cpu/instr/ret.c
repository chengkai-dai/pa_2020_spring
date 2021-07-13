#include "cpu/instr.h"

make_instr_func(ret_near)
{

    // 1. next instruction is popped
    // 2. release the space on the stack which stores next instruction
    // 3. set the eip to the popped instruction value

    //step 1
    OPERAND rsp;

    rsp.type = OPR_MEM;
    rsp.addr = cpu.esp;
    rsp.data_size = data_size;

    operand_read(&rsp);

    // step 2
    cpu.esp += data_size / 8;

    //step 3
    uint32_t ret_eip = rsp.val;
    cpu.eip = ret_eip;

    return 1;
}
