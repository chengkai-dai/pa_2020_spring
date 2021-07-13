#include "cpu/instr.h"

static void instr_execute_2op() 
{
	operand_read(&opr_src);
    operand_read(&opr_dest);
    printf("opr_src.val 0x%x\n",opr_src.val);
    printf("before opr_dest.val 0x%x\n",opr_dest.val);

	opr_dest.val=alu_or(sign_ext(opr_src.val,opr_src.data_size),opr_dest.val,data_size);
    printf("after opr_dest.val 0x%x\n",opr_dest.val);
    operand_write(&opr_dest);
}

make_instr_impl_2op(or,r,rm,v)