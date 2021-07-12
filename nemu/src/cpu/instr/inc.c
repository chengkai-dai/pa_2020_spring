#include "cpu/instr.h"

static void	instr_execute_1op(){
    opr_dest.val+=1;
    printf("opr_dest.addr 0x%x\n ", opr_dest.addr);

    printf("opr_dest.val 0x%x\n ", opr_dest.val);

    printf("opr_dest.mem_addr.base 0x%x\n ", opr_dest.mem_addr.base);

    printf("opr_dest.mem_addr.index 0x%x\n ", opr_dest.mem_addr.index);

    printf("opr_dest.scale 0x%x\n ", opr_dest.mem_addr.scale);

    printf("opr_dest.disp %d\n ", opr_dest.mem_addr.disp);

    operand_write(&opr_dest);
}

make_instr_impl_1op(inc,rm,v);