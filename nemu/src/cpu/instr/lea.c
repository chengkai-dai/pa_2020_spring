#include "cpu/instr.h"

make_instr_func(lea_r2rm_v)
{
    int len=1;
    OPERAND rm,r;
    len += modrm_r_rm(eip + 1, &r, &rm);
    printf("r.mem_addr.base 0x%x\n", r.mem_addr.base);
    printf("r.mem_addr.index 0x%x\n", r.mem_addr.index);
    printf("r.mem_addr.base 0x%x\n", r.mem_addr.scale);
    printf("r.mem_addr.base 0x%x\n", r.mem_addr.base);

    exit(-1);
}