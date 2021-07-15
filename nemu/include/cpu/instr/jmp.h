#ifndef __INSTR_JMP_H__
#define __INSTR_JMP_H__

make_instr_func(jmp_near);
make_instr_func(jmp_near_indirect);
make_instr_func(jmp_short_);
make_instr_func(jnp_near);
make_instr_func(jnb_near);
make_instr_func(jna_near);
make_instr_func(jae_near);
make_instr_func(jle_near);
make_instr_func(jl_near);
make_instr_func(ja_near);
make_instr_func(je_near);
make_instr_func(jg_short_);
make_instr_func(je_short_);
make_instr_func(jle_short_);
make_instr_func(jne_short_);
make_instr_func(jnp_short_);
make_instr_func(jl_short_);
make_instr_func(jna_short_);
make_instr_func(jno_short_);
make_instr_func(jge_short_);
make_instr_func(js_short_);
#endif
