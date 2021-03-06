#include "cpu/instr.h"

static void instr_execute_1op()
{
    operand_read(&opr_src);

    cpu.esp -= data_size / 8;
    OPERAND sr;
    sr.type = OPR_MEM;
    sr.addr = cpu.esp;
    sr.data_size = data_size;
    sr.val = opr_src.val;
    sr.sreg = SREG_SS;

    operand_write(&sr);
}

make_instr_impl_1op(push, r, v);
make_instr_impl_1op(push, rm, v);
make_instr_impl_1op(push, i, b);
make_instr_impl_1op(push, i, v);

// make_instr_func(push_r_v)
// {

//     int len = 1;
//     // 1. allocate the space for the pushed value
//     // 2. set the memory to the new value

//     // step 1

//     cpu.esp -= data_size / 8;

//     // step 2
//     OPERAND r, sr;
//     r.type = OPR_REG;
//     r.addr = opcode & 0x7;
//     r.data_size = data_size;
//     operand_read(&r);

//     sr.type = OPR_MEM;
//     sr.addr = cpu.esp;
//     sr.data_size = data_size;
//     sr.val = r.val;

//     operand_write(&sr);

//     return len;
// }

// make_instr_func(push_rm_v)
// {
//     int len = 1;
//     // step 1
//     cpu.esp -= data_size / 8;

//     // step 2
//     OPERAND rm, sr;
//     len += modrm_rm(eip + 1, &rm);
//     rm.data_size = data_size;
//     operand_read(&rm);

//     // r.type = OPR_REG;
//     // r.addr = opcode & 0x7;
//     // r.data_size=data_size;
//     // operand_read(&r);

//     sr.type = OPR_MEM;
//     sr.addr = cpu.esp;
//     sr.data_size = data_size;
//     sr.val = rm.val;

//     operand_write(&sr);

//     return len;
// }

// make_instr_func(push_i_b)
// {

//     int len = 1;
//     // step 1
//     cpu.esp -= data_size / 8;

//     // step 2
//     OPERAND imm, sr;
//     imm.type = OPR_IMM;
//     imm.addr = eip + 1;
//     imm.data_size = 8;
//     len += imm.data_size / 8;

//     operand_read(&imm);

//     // r.type = OPR_REG;
//     // r.addr = opcode & 0x7;
//     // r.data_size=data_size;
//     // operand_read(&r);

//     sr.type = OPR_MEM;
//     sr.addr = cpu.esp;
//     sr.sreg = SREG_SS;
//     sr.data_size = data_size;
//     sr.val = imm.val;

//     operand_write(&sr);
//     // printf ("sr.val 0x%x\n",sr.val);

//     return len;
// }

// make_instr_func(push_i_v)
// {

//     int len = 1;
//     // step 1
//     cpu.esp -= data_size / 8;

//     // step 2
//     OPERAND imm, sr;
//     imm.type = OPR_IMM;
//     imm.sreg = SREG_DS;
//     imm.addr = eip + 1;
//     imm.data_size = data_size;
//     len += imm.data_size / 8;

//     operand_read(&imm);

//     // r.type = OPR_REG;
//     // r.addr = opcode & 0x7;
//     // r.data_size=data_size;
//     // operand_read(&r);

//     sr.type = OPR_MEM;
//     sr.addr = cpu.esp;
//     sr.sreg = SREG_SS;
//     sr.data_size = data_size;
//     sr.val = imm.val;

//     operand_write(&sr);
//     print_asm_1("push", " ",len, &imm);

//     return len;
// }
