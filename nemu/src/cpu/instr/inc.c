#include "cpu/instr.h"

static void instr_execute_1op()
{

    operand_read(&opr_src);

    uint8_t one=1;

    one=sign_ext(1,8);

    opr_src.val = alu_add(one, opr_src.val, data_size);

    operand_write(&opr_src);
}

make_instr_impl_1op(inc, rm, v);