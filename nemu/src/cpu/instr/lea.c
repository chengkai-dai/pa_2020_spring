#include "cpu/instr.h"

make_instr_func(lea)
{
    int len=1;
    OPERAND rm,r;
    len += modrm_r_rm(eip + 1, &r, &rm);
    r.data_size=data_size;
    r.val = rm.addr;
    operand_write(&r);
    print_asm_2("lea","",len, &rm,&r);
    return len;
}