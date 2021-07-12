#include "cpu/instr.h"

make_instr_func(lea)
{
    int len=1;
    OPERAND rm,r;
    len += modrm_r_rm(eip + 1, &r, &rm);
    // operand_read(&r);
    // operand_read(&rm);
    printf("eip 0x%x\n",cpu.eip);
    printf("rm.mem_addr.base 0x%x\n", rm.mem_addr.base);
    printf("rm.mem_addr.index 0x%x\n", rm.mem_addr.index);
    printf("rm.mem_addr.scale 0x%x\n", rm.mem_addr.scale);
    printf("rm.mem_addr.disp 0x%x\n", rm.mem_addr.disp);
    printf("rm.addr 0x%x\n", rm.addr);
    printf("r.val 0x%x\n", r.val);

    return len;
}