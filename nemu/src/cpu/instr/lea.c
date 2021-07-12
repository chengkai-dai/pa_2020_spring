#include "cpu/instr.h"

make_instr_func(lea)
{
    int len=1;
    OPERAND rm,r;
    len += modrm_r_rm(eip + 1, &r, &rm);
    // operand_read(&r);
    // operand_read(&rm);
    r.data_size=data_size;
    r.val = rm.addr;
    operand_write(&r);
    printf("2222\n");

    return len;
}