#include "cpu/instr.h"

static void instr_execute_2op() 
{
	operand_read(&opr_src);
	operand_read(&opr_dest);
	// printf("eax value 0x%x\n",cpu.gpr[0]._32);
	// printf("ecx value 0x%x\n",cpu.gpr[1]._32);
	// printf("cf value 0x%x\n",cpu.eflags.CF);

	// printf("adc before value 0x%x\n",opr_dest.val);
	opr_dest.val=alu_adc(sign_ext(opr_src.val,opr_src.data_size),opr_dest.val,data_size);
	// printf("adc after value 0x%x\n",opr_dest.val);

	operand_write(&opr_dest);
}

make_instr_impl_2op(adc, r, rm, v)
