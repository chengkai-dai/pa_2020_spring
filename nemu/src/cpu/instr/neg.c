#include "cpu/instr.h"

// make_instr_func(neg_rm_v)
// {

//     OPERAND rm;
//     int len = 1;
//     printf("eip 0x%x\n", cpu.eip);

//     len += modrm_rm(eip + 1, &rm);
//     rm.data_size = data_size;
//     printf("neg before 0x%x\n", rm.val);

//     rm.val = alu_neg(rm.val,data_size);
//     printf("neg after 0x%x\n", rm.val);
//     printf("len 0x%x\n", len);

//     operand_write(&rm);

//     print_asm_1("neg","",len,&rm);
//     return len;
// }

static void instr_execute_1op(){
    operand_read(&opr_src);
    // printf("neg before 0x%x\n",opr_src.val);
    opr_src.val=alu_neg(opr_src.val, opr_src.data_size);
    // printf("neg before 0x%x\n",opr_src.val);

    operand_write(&opr_src);
}

make_instr_impl_1op(neg,rm,v)