#include "cpu/instr.h"

static void instr_execute_2op() 
{
	operand_read(&opr_src);
	operand_read(&opr_dest);
	// alu_sub(sign_ext(opr_src.val, opr_src.data_size), opr_dest.val, data_size);   

	uint32_t res=alu_sub(sign_ext(opr_src.val, opr_src.data_size), sign_ext(opr_dest.val), data_size);   

	if(cpu.eip==0x30178){
		printf("opr_src.val 0x%x\n",opr_src.val);
		printf("opr_dest.val 0x%x\n",opr_dest.val);
		printf("res 0x%x\n",res);
		printf("cpu.zf 0x%x\n",cpu.eflags.ZF);

	}
	   
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
make_instr_impl_2op(cmp, i, rm, v)
make_instr_impl_2op(cmp, r, rm, v)
make_instr_impl_2op(cmp, rm, r, v)
make_instr_impl_2op(cmp, i, a, b)
make_instr_impl_2op(cmp, i, rm, b)
