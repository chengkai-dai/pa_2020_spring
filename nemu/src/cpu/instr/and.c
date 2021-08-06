#include "cpu/instr.h"

static void instr_execute_2op() 
{
	operand_read(&opr_src);
    operand_read(&opr_dest);
	opr_dest.val=alu_and(sign_ext(opr_src.val,opr_src.data_size),opr_dest.val,data_size);
	// if (opr_dest.data_size != opr_src.data_size)
	// {
	// 	printf("opr_dest 0x%x\n",opr_dest.val);
	// 	printf("opr_src 0x%x\n",opr_src.val);
	// 	printf("res1 0x%x\n",alu_and(sign_ext(opr_src.val, opr_src.data_size), sign_ext(opr_dest.val, opr_dest.data_size), data_size));
	// 	printf("res2 0x%x\n",alu_and(sign_ext(opr_src.val,opr_src.data_size),opr_dest.val,data_size));
	// }
	// if (opr_dest.data_size != opr_src.data_size)
	// 	alu_and(sign_ext(opr_src.val, opr_src.data_size), sign_ext(opr_dest.val, opr_dest.data_size), data_size);
	// else
	// 	alu_and(sign_ext(opr_src.val, data_size),opr_dest.val, data_size);

	operand_write(&opr_dest);
}

make_instr_impl_2op(and,i,rm,bv)
make_instr_impl_2op(and,i,rm,v)
make_instr_impl_2op(and,rm,r,b)
make_instr_impl_2op(and,r,rm,v)
make_instr_impl_2op(and,i,rm,b)
make_instr_impl_2op(and,i,a,v)