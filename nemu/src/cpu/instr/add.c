#include "cpu/instr.h"

make_instr_func(add_i2r_v)
{

    OPERAND imm, r;

    int len = 1;

    r.data_size = data_size;
    r.type = OPR_REG;
    r.addr = instr_fetch(eip + 1, 1) & 0x7;
    operand_read(&r);

    len += 1;

    imm.data_size = data_size;
    imm.type = OPR_IMM;
    imm.sreg = SREG_CS;
    imm.addr = eip + 2;
    operand_read(&imm);

    len += data_size / 8;

    r.val = alu_add(imm.val, r.val, data_size);

    operand_write(&r);

    return len;
}
