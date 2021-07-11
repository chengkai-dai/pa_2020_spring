#include "cpu/instr.h"

make_instr_func(ret_near){

    OPERAND rsp;

    rsp.type = OPR_MEM;
    rsp.addr = cpu.esp;
    rsp.data_size = data_size;

    operand_read(&rsp);

    uint32_t ret_eip=rsp.val;

    cpu.esp+=32;

    cpu.eip=ret_eip;

    return 0;
}
