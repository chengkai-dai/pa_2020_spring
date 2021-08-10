#include "cpu/instr.h"

make_instr_func(iret)
{
#ifdef IA32_INTR

    int len = 1;

    //step 1 Return CS selector (at eSP+4) must be non-null
    OPERAND imm;

    imm.type = OPR_IMM;
    imm.sreg = SREG_CS;
    imm.data_size = 16;
    imm.addr = cpu.esp;

    operand_read(&imm);

    SegReg sr;
    sr.val = imm.val;

    // step 2 Load CS:EIP from stack;
    // Load CS-register with new code segment descriptor;
    // Load EFLAGS with third doubleword from stack;
    // Increment eSP by 12;

    //Load CS:EIP
    imm.data_size = data_size;
    imm.addr = cpu.esp + 2;
    operand_read(&imm);
    cpu.eip = imm.val;

    //Load CS-register
    load_sreg(sr.index);

    //Load EFLAGS
    imm.data_size = data_size;
    imm.addr = cpu.esp + 6;
    operand_read(&imm);
    cpu.eflags.val = imm.val;

    cpu.esp -= 10;

    print_asm_0("iret", "", len);

    return 0;

#else
    printf("please implement op iret\n");
    assert(0);
#endif
}