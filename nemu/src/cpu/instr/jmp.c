#include "cpu/instr.h"
#include <stdlib.h>
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
        ind.sreg = SREG_CS;
        len += modrm_rm(eip + 1, &ind);
        operand_read(&ind);
        int dest = sign_ext(ind.val, data_size);
        cpu.eip = dest;
        return 0;
}

make_instr_func(jmp_far_imm){        
#ifdef IA32_SEG    
        int len = 1;
        OPERAND ptr1, ptr2;
        ptr1.data_size = 16;
        ptr2.data_size = data_size;
        ptr1.type = ptr2.type = OPR_IMM;
        ptr1.sreg = ptr2.sreg = SREG_CS;
        ptr2.addr = eip + 1;
        ptr1.addr = eip + 1 + data_size/8;

        print_asm_2("ljmp","",2,&ptr1,&ptr2);

        operand_read(&ptr1);
        operand_read(&ptr2);
        len += 2 + data_size/8;
        
        cpu.eip = ptr2.val;
        cpu.segReg[SREG_CS].val = ptr1.val;
        
        load_sreg(SREG_CS);
        
        return 0;       
#else
        printf("please implement ljmp\n");assert(0);
#endif
}
