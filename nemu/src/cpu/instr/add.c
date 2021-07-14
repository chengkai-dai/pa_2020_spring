#include "cpu/instr.h"

static void instr_execute_2op() 
{
	operand_read(&opr_src);
	operand_read(&opr_dest);
    opr_dest.val = alu_add(sign_ext(opr_src.val,opr_src.data_size), opr_dest.val, data_size);
	operand_write(&opr_dest);

	if (cpu.eip == 0x30174)
    {
        for (int i = 0; i < 100; i++)
        {

            OPERAND test_r;
            test_r.type = OPR_MEM;
            test_r.addr = cpu.ebx + 0x20 + i * 4;
            test_r.data_size = data_size;
            operand_read(&test_r);
            printf(" 0x%x ", test_r.val);
        }
    }
}

make_instr_impl_2op(add, i, rm, v)
make_instr_impl_2op(add, i, a, v)
make_instr_impl_2op(add, rm, r, v)
make_instr_impl_2op(add, i, rm, bv)
make_instr_impl_2op(add, r, rm, v)


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
