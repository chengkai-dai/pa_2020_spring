#include "cpu/instr.h"

make_instr_func(add_i2r_v){

    OPERAND imm, r;
    int len = 1;

    len += modrm_rm(eip + 1, &r);
    printf("r.val 0x%x\n",r.val);
    printf("r.addr 0x%x\n",r.addr);
    // r.data_size=data_size;

    // imm.type=OPR_IMM;
    // imm.addr=eip+len;
    // imm.data_size=8;


    // operand_read(&imm);
	// alu_sub(imm.val,r.val,data_size);
    return len+1;
}
