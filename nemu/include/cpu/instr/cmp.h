#ifndef __INSTR_CMP_H__
#define __INSTR_CMP_H__



make_instr_impl_2op(cmp, i, a, b)
make_instr_impl_2op(cmp, i, a, v)
make_instr_impl_2op(cmp, i, r, b)
make_instr_impl_2op(cmp, rm, r, v)
make_instr_impl_2op(cmp, i, rm, b)
make_instr_impl_2op(cmp, i, rm, v)
make_instr_impl_2op(cmp, i, r, b)
make_instr_impl_2op(cmp, i, r, v)
make_instr_impl_2op(cmp, a, o, b)
make_instr_impl_2op(mov, a, o, v)
make_instr_impl_2op(mov, o, a, b)
make_instr_impl_2op(mov, o, a, v)


make_instr_func(cmp_i2a_b);
make_instr_func(cmp_i2a_v);
make_instr_func(cmp_i2rm_bv);
make_instr_func(cmp_i2rm_b);
make_instr_func(cmp_i2rm_v);
make_instr_func(cmp_rm2r_v);
make_instr_func(cmp_rm2r_b);
make_instr_func(cmp_i2a_b);
make_instr_func(cmp_r2rm_v);
make_instr_func(cmp_r2rm_b);

make_instr_func(cmps_v);
make_instr_func(cmps_b);

#endif