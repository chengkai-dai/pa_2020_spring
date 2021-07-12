#include "cpu/instr.h"

make_instr_func(lea_r2rm_v)
{
    int len=1;
    OPERAND rm,r;
    len += modrm_r_rm(eip + 1, &r, &rm);
    printf("eip 0x%x\n",cpu.eip);
    printf("r.mem_addr.base 0x%x\n", r.mem_addr.base);
    printf("r.mem_addr.index 0x%x\n", r.mem_addr.index);
    printf("r.mem_addr.scale 0x%x\n", r.mem_addr.scale);
    printf("r.mem_addr.disp 0x%x\n", r.mem_addr.disp);
    printf("r.addr 0x%x\n", r.addr);
    printf("rm.addr 0x%x\n", rm.addr);

    return len;
}