#include "cpu/instr.h"

make_instr_func(lea)
{
    int len=1;
    OPERAND rm,r;
    len += modrm_r_rm(eip + 1, &r, &rm);
    // operand_read(&r);
    // operand_read(&rm);
    
    printf("rm.addr 0x%x\n", rm.addr);

    return len;
}