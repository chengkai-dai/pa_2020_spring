#ifndef __INSTR_CMP_H__
#define __INSTR_CMP_H__

make_instr_func(cmp_i2rm_bv);
make_instr_func(cmp_i2rm_v);
make_instr_func(cmp_r2rm_v);
make_instr_func(cmp_rm2r_v);

// make_instr_impl_2op(cmp, i, rm, v)


// static void instr_execute_2op() 
// {
// 	operand_read(&opr_src);
// 	opr_dest.val = opr_src.val;
// 	operand_write(&opr_dest);
// }


#endif