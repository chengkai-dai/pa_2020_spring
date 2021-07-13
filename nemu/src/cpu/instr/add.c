#include "cpu/instr.h"

static void instr_execute_2op() 
{
	
	operand_read(&opr_src);
	operand_read(&opr_dest);
	if(cpu.eip==0x3003a){
		printf("eax value before 0x%x\n",cpu.gpr[0]._32);
		printf("ecx value before 0x%x\n",cpu.gpr[1]._32);
		printf("add opr_src.val 0x%x\n", opr_src.val);
		printf("add opr_dest.val before 0x%x\n", opr_dest.val);
	}
    opr_dest.val = alu_add(sign_ext(opr_src.val,opr_src.data_size), opr_dest.val, data_size);
	operand_write(&opr_dest);
	if(cpu.eip==0x3003a){
		printf("eax value after 0x%x\n",cpu.gpr[0]._32);
		printf("ecx value after 0x%x\n",cpu.gpr[1]._32);
		printf("add opr_dest.val after 0x%x\n", opr_dest.val);
	}
}

make_instr_impl_2op(add, i, rm, v)
make_instr_impl_2op(add, i, a, v)
make_instr_impl_2op(add, rm, r, v)
make_instr_impl_2op(add, i, rm, bv)


// make_instr_func(add_i2rm_v)
// {

//     OPERAND imm, r;
    
//     int len = 1;

//     len += modrm_rm(eip + 1, &r); 
// 	r.data_size=data_size;
//     operand_read(&r);

//     imm.data_size = data_size;
//     imm.type = OPR_IMM;
//     imm.sreg = SREG_CS;
//     imm.addr = eip + len;
//     operand_read(&imm);

//     len += data_size / 8;

//     r.val = alu_add(imm.val, r.val, data_size);

//     operand_write(&r);

//     return len;
// }
