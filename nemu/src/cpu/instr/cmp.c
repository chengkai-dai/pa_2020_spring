#include "cpu/instr.h"

static void instr_execute_2op() 
{
	operand_read(&opr_src);
	operand_read(&opr_dest);
	alu_sub(opr_src.val, opr_dest.val, data_size);
}

// make_instr_func(cmp_i2rm_bv)
// {
//     OPERAND imm, r;
//     int len = 1;

//     len += modrm_rm(eip + 1, &r);
//     r.data_size = data_size;
//     operand_read(&r);

//     imm.type = OPR_IMM;
//     imm.addr = eip + len;
//     imm.data_size = 8;
//     operand_read(&imm);

//     alu_sub(sign_ext(imm.val,data_size), r.val, data_size);
//     return len + 1;
// }

make_instr_impl_2op(cmp, i, rm, bv)
make_instr_impl_2op(cmp, i, rm, bv)
