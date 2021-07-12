#include "cpu/instr.h"

static void instr_execute_2op() 
{
	operand_read(&opr_src);
    operand_read(&opr_dest);
    printf("opr_src.val 0x%x\n",sign_ext(opr_src.val,data_size));
    printf("opr_dest.val 0x%x\n",sign_ext(opr_src.val,data_size));

	opr_dest.val=alu_add(sign_ext(opr_src.val,data_size),opr_dest.val,data_size);
	operand_write(&opr_dest);
}

make_instr_impl_2op(and,i,rm,bv)