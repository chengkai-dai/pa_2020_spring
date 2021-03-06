#include "cpu/instr.h"
#include <stdlib.h>

make_instr_func(lgdt)
{
#ifdef IA32_SEG
    opr_src.data_size = data_size;
    int len = 1 + modrm_rm(eip + 1, &opr_src);

    uint32_t addr = opr_src.addr;

    OPERAND limit;
    limit.data_size = 16;
    limit.type = OPR_MEM;
    limit.sreg = SREG_DS;
    limit.addr = addr;

    OPERAND base;
    base.data_size = 32;
    base.type = OPR_MEM;
    base.sreg = SREG_DS;
    base.addr = addr + 2;   

    operand_read(&limit);
    operand_read(&base);
    cpu.gdtr.limit = limit.val;
    if (data_size == 16)
        cpu.gdtr.base = base.val & 0x00ffffff;
    else
        cpu.gdtr.base = base.val;
    print_asm_1("lgdt", "", 2, &opr_src);

    return len;
#else
    printf("please implement lgdt\n");
    assert(0);
#endif
}