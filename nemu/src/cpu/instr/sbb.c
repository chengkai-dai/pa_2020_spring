#include "cpu/instr.h"

static void instr_execute_2op() 
{
	operand_read(&opr_src);
	operand_read(&opr_dest);
    uint32_t v;
	if (opr_dest.data_size != opr_src.data_size){
		v=alu_add(sign_ext(opr_src.val, opr_src.data_size), cpu.eflags.CF, data_size);
        opr_dest.val=alu_sub(v,sign_ext(opr_dest.val,opr_dest.data_size), data_size);
    }
	else{
		v=alu_add(opr_src.val, cpu.eflags.CF, data_size);
        opr_dest.val=alu_sub(v,opr_dest.val,data_size);
    }

	operand_write(&opr_dest);
}

make_instr_impl_2op(sbb, rm, r, v)
