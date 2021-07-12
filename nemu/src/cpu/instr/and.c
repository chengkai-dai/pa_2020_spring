#include "cpu/instr.h"

static void instr_execute_2op() 
{
	operand_read(&opr_src);
    operand_read(&opr_dest);
	alu_add()
	operand_write(&opr_dest);
}

make_instr_impl_2op(and,i,rm,bv)