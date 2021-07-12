#include "cpu/instr.h"

make_instr_func(lea_r2rm_v)
{
    int len=1;
    OPERAND rm,r;
    len += modrm_r_rm(eip + 1, &r, &rm);

    return -1;
}