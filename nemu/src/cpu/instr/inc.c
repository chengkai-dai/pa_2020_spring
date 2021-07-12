#include "cpu/instr.h"

static void	instr_execute_1op(){
    opr_dest.val+=1;
    operand_write(&opr_dest);
}

make_instr_impl_1op(inc,rm,v);