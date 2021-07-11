#include "cpu/instr.h"

make_instr_func(cmp_i2rm_bv){
    OPERAND imm, r;

    int len=modrm_rm(eip+1, &r);
    r.data_size=data_size;

    imm.type=OPR_IMM;
    imm.addr=eip+1+len;
    imm.data_size=8;

	alu_sub(imm.val,r.val,data_size);

    return 2 + len;
}