#include "cpu/instr.h"

make_instr_func(cmp_i2rm_bv){
    OPERAND imm, r;
    imm.type=OPR_IMM;
    imm.addr=eip+2;
    imm.data_size=8;

    modrm_rm(eip, &r);
    r.data_size=data_size;

    operand_read(&imm);
    r.val=imm.val;
    operand_write(&r);

    return 2;
}