#include "cpu/instr.h"

static void	instr_execute_1op(){
    opr_dest.val+=1;
    printf("opr_dest.addr 0x%x\n ", opr_dest.addr);

    printf("opr_dest.addr 0x%x\n ", opr_dest.);

    printf("opr_dest.addr 0x%x\n ", opr_dest.addr);

    printf("opr_dest.addr 0x%x\n ", opr_dest.addr);

    printf("opr_dest.addr 0x%x\n ", opr_dest.addr);

    operand_write(&opr_dest);
}

make_instr_impl_1op(inc,rm,v);