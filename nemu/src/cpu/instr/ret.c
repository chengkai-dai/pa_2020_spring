#include "cpu/instr.h"

make_instr_func(ret_near)
{

    // 1. next instruction is popped
    // 2. release the space on the stack which stores next instruction
    // 3. set the eip to the popped instruction value

    //step 1
    OPERAND rsp;

    rsp.type = OPR_MEM;
    rsp.addr = cpu.esp;
    rsp.sreg = SREG_SS;
    rsp.data_size = data_size;

    operand_read(&rsp);

    // step 2
    cpu.esp += data_size / 8;

    //step 3
    uint32_t ret_eip = rsp.val;
    cpu.eip = ret_eip;
    
    print_asm_0("ret", " ", 1);

    return 0;
}

make_instr_func(ret_near_imm16)
{

    OPERAND rsp;

    rsp.type = OPR_MEM;
    rsp.addr = cpu.esp;
    rsp.data_size = data_size;
    rsp.sreg = SREG_SS;

    operand_read(&rsp);

    // step 2
    cpu.esp += data_size / 8;

    //step 3
    uint32_t ret_eip = rsp.val;
    cpu.eip = ret_eip;

    // instruction has immediate operand THEN eSP ← eSP + imm16
    OPERAND imm;
    imm.type = OPR_IMM;
    imm.sreg = SREG_CS;
    imm.addr = eip + 1;
    imm.data_size = 16;
    operand_read(&imm);

    cpu.esp += imm.val;

    print_asm_1("ret", " ", 1, &imm);

    return 0;
}
