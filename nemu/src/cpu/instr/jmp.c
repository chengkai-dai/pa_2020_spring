#include "cpu/instr.h"

make_instr_func(jmp_near)
{
        OPERAND rel;
        rel.type = OPR_IMM;
        rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);

        int offset = sign_ext(rel.val, data_size);
        // thank Ting Xu from CS'17 for finding this bug
        print_asm_1("jmp", "", 1 + data_size / 8, &rel);

        cpu.eip += offset;

        return 1 + data_size / 8;
}

make_instr_func(jmp_short_)
{
        OPERAND rel;
        int data_size = 8;
        rel.type = OPR_IMM;
        rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);

        int offset = sign_ext(rel.val, data_size);
        // thank Ting Xu from CS'17 for finding this bug
        print_asm_1("jmp", "", 1 + data_size / 8, &rel);

        cpu.eip += offset;

        return 1 + data_size / 8;
}

make_instr_func(jmp_near_indirect)
{
        int len = 1;
        OPERAND ind;
        ind.data_size = data_size;
        len += modrm_rm(eip + 1, &ind);
        operand_read(&ind);
        int dest = sign_ext(ind.val, data_size);
        // printf("offset indirect 0x%x\n", offset);
        // printf("ind.mem_addr.base 0x%x\n", ind.mem_addr.base);
        // printf("ind.mem_addr.disp 0x%x\n", ind.mem_addr.disp);
        // printf("ind.mem_addr.index 0x%x\n", ind.mem_addr.index);
        // printf("ind.mem_addr.scale 0x%x\n", ind.mem_addr.scale);

        // printf("edx val 0x%x\n", cpu.edx);
        // printf("eip 0x%x\n", cpu.eip);

        cpu.eip = dest;
        return 0;

}