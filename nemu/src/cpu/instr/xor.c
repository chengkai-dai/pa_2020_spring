#include "cpu/instr.h"

static void instr_execute_2op() 
{
	operand_read(&opr_src);
    operand_read(&opr_dest);
	opr_dest.val=alu_xor(sign_ext(opr_src.val,opr_src.data_size),opr_dest.val,data_size);
	operand_write(&opr_dest);
}

make_instr_impl_2op(xor,r,rm,v)

// make_instr_func(xor_i2a_b){
//     int len = 1; 
// 	OPERAND al, imm;
//     al.type = OPR_REG;
// 	al.data_size = 8;
// 	al.addr = REG_AL;



// 	operand_read(&al);
// }
