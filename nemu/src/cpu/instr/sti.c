#include "cpu/instr.h"

make_instr_func(sti)
{
    //STI sets the interrupt flag to 1.
    int len = 1;

    cpu.eflags.IF = 1;

    print_asm_0("sti", "", len);
    
    return len;
}