#include "cpu/instr.h"

make_instr_func(add_i2r_v){

    OPERAND  opr_src,opr_dest;
    int len = 1;

    len += opr_src.data_size / 8; 
	opr_src.type = OPR_IMM;       
	opr_src.sreg = SREG_CS;       
	opr_src.addr = eip + 1;       
    opr_dest.type = OPR_REG;      
	opr_dest.addr = opcode & 0x7;
    operand_read(&opr_src);
    


    printf("opr_src.val 0x%x\n",opr_src.val);
    printf("opr_dest.addr 0x%x\n",opr_dest.addr);
    // r.data_size=data_size;

    // imm.type=OPR_IMM;
    // imm.addr=eip+len;
    // imm.data_size=8;


    // operand_read(&imm);
	// alu_sub(imm.val,r.val,data_size);
    return len+1;
}
