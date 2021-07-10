#include "cpu/instr.h"

make_instr_func(cmp_i2rm_bv){
    OPERAND imm, r;

    int len=modrm_rm(eip+1, &r);
    r.data_size=data_size;

    // imm.type=OPR_IMM;
    // imm.addr=eip+len;
    // imm.data_size=8;

    return 2;
}