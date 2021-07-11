#include "cpu/instr.h"

make_instr_func(call_near)
{
    printf("call!!!!!!\n");
    int len = 1;
    OPERAND rsp, imm;

    cpu.esp -= 32;

    rsp.type = OPR_MEM;
    rsp.addr = cpu.esp;
    rsp.data_size = data_size;
    rsp.val = eip;

    operand_write(&rsp);

    len += data_size / 4;

    OPERAND rel;
    rel.type = OPR_IMM;
    rel.sreg = SREG_CS;
    rel.data_size = data_size;
    rel.addr = eip + 1;

    operand_read(&rel);

    int offset = sign_ext(rel.val, data_size);

    cpu.eip += offset;

    return len;
}