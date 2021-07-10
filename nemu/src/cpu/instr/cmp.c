#include "cpu/instr.h"

make_instr_func(cmp_i2rm_bv){
    OPERAND imm, r;

    int len=modrm_rm(eip+1, &r);
    r.data_size=data_size;
    printf("read len %d\n",len);

    imm.type=OPR_IMM;
    imm.addr=eip+2;
    imm.data_size=8;

    // operand_read(&imm);
    // r.val=imm.val;
    // operand_write(&r);

    return 2;
}