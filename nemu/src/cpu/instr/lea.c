#include "cpu/instr.h"

make_instr_func(lea)
{
    int len=1;
    OPERAND rm,r;
    len += modrm_r_rm(eip + 1, &r, &rm);
    r.data_size=data_size;
    printf("r.val 0x%x\n",r.val);
    printf("rm.addr 0x%x\n",rm.addr);

    r.val = rm.addr;
    operand_write(&r);

    return len;
}