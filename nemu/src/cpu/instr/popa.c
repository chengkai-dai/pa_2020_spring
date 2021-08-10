#include "cpu/instr.h"

static void popr(int reg_index){

    OPERAND r, sr;
    sr.type = OPR_MEM;
    sr.sreg = SREG_SS;
    sr.addr = cpu.esp;
    sr.data_size = data_size;
    operand_read(&sr);

    r.type = OPR_REG;
    r.sreg = SREG_DS;
    r.addr = reg_index;
    r.data_size = data_size;
    r.val = sr.val;
    operand_write(&r);

    cpu.esp += data_size / 8;

}


make_instr_func(popa)
{
// EDI ← Pop();
// ESI ← Pop();
// EBP ← Pop();
// throwaway ← Pop (); (* Skip ESP *)
// EBX ← Pop();
// EDX ← Pop();
// ECX ← Pop();
// EAX ← Pop();

    int len = 1;

    popr(REG_EDI);
    popr(REG_ESI);
    popr(REG_EBP);

    //skip
    cpu.esp += data_size / 8;

    popr(REG_EBX);
    popr(REG_EDX);
    popr(REG_ECX);
    popr(REG_EAX);
    
    print_asm_0("popa", " ",len);


    return len;
}
