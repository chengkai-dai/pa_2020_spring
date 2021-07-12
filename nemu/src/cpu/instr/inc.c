#include "cpu/instr.h"

static void	instr_execute_1op(){

    operand_read(&opr_src);

    opr_src.val+=1;


    // printf("opr_dest.addr 0x%x\n ", opr_src.addr);

    // printf("opr_dest.val 0x%x\n ", opr_src.val);

    // printf("opr_dest.mem_addr.base 0x%x\n ", opr_src.mem_addr.base);

    // printf("opr_dest.mem_addr.index 0x%x\n ", opr_src.mem_addr.index);

    // printf("opr_dest.scale 0x%x\n ", opr_src.mem_addr.scale);

    // printf("opr_dest.disp %d\n ", opr_src.mem_addr.disp);

    operand_write(&opr_src);
}

make_instr_impl_1op(inc,rm,v);