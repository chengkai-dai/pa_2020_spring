#include "cpu/instr.h"
static void push(uint32_t val, int data_size)
{

    cpu.esp -= data_size / 8;

    OPERAND stack_op;
    stack_op.type = OPR_MEM;
    stack_op.addr = cpu.esp;
    stack_op.data_size = data_size;
    stack_op.val = val;
    stack_op.sreg = SREG_SS;
    operand_write(&stack_op);

}

make_instr_func(pusha)
{
    int len = 1;

    //Push EAX, ECX, EDX, EBX, original ESP, EBP, ESI, and EDI
    uint32_t esp_tmp=cpu.esp;
    push(cpu.eax,data_size);
    push(cpu.ecx,data_size);
    push(cpu.edx,data_size);
    push(cpu.ebx,data_size);
    push(esp_tmp,data_size);
    push(cpu.ebp,data_size);
    push(cpu.esi,data_size);
    push(cpu.edi,data_size);
    print_asm_0("pusha", " ",len);

    return len;

}