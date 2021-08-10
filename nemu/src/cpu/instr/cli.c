#include "cpu/instr.h"

make_instr_func(cli)
{
    int len = 1;

    //CLI clears the interrupt flag if=0


    cpu.eflags.IF=0;

   print_asm_0("cli"," ",1);

   return len;
}

