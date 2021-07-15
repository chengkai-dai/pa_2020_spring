#include "cpu/instr.h"

static void instr_execute_2op()
{
	operand_read(&opr_src);
	operand_read(&opr_dest);
	if (opr_dest.data_size != opr_src.data_size)
		alu_add(alu_adc(opr_src.val, opr_src.data_size), sign_ext(opr_dest.val, opr_dest.data_size), data_size);
	else
		alu_adc(opr_src.val, opr_dest.val, data_size);
	//opr_dest.val = alu_adc(sign_ext(opr_src.val, opr_src.data_size), opr_dest.val, data_size);
	operand_write(&opr_dest);
}

make_instr_impl_2op(adc, r, rm, v)
