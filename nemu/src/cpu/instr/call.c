#include "cpu/instr.h"

make_instr_func(call_near)
{
    int len = 1;
    OPERAND rsp;

    // next instruction is pushed to the top of stack
    // 1. allocate the space on the stack for next instruction
    // 2. push the instruction to stack
    // 3. jmp to the next instr

    len += data_size / 8;

    //step 1 and 2
    cpu.esp -= data_size / 8;
    rsp.type = OPR_MEM;
    rsp.addr = cpu.esp;
    rsp.data_size = data_size;
    rsp.val = eip + len;

    operand_write(&rsp);

    //step 3
    // set the eip to the call addr ((current eip + len) (next instr) + offset)

    OPERAND rel;
    rel.type = OPR_IMM;
    rel.sreg = SREG_CS;
    rel.data_size = data_size;
    rel.addr = eip + 1;

    operand_read(&rel);

    int offset = sign_ext(rel.val, data_size);
    cpu.eip += offset;

    return len;
}

#include "cpu/instr.h"

make_instr_func(call_near_indirect)
{
    int len = 1;
    OPERAND rsp;

    // next instruction is pushed to the top of stack
    // 1. allocate the space on the stack for next instruction
    // 2. push the instruction to stack
    // 3. jmp to the next instr

    len += data_size / 8;

    //step 1 and 2
    cpu.esp -= data_size / 8;
    rsp.type = OPR_MEM;
    rsp.addr = cpu.esp;
    rsp.data_size = data_size;
    rsp.val = eip + len;

    operand_write(&rsp);

    //step 3
    // set the eip to the call addr ((current eip + len) (next instr) + offset)

    OPERAND ind;
    ind.data_size = data_size;
    len += modrm_rm(eip + 1, &ind);
    operand_read(&ind);
    int dest = sign_ext(ind.val, data_size);

    cpu.eip += dest;

    return 0;
}