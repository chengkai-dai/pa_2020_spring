#include "cpu/instr.h"

make_instr_func(push_r_v){
    printf("push_r_v\n");
    int len=1;

    OPERAND r, sr;
    r.type = OPR_REG; 
	r.addr = opcode & 0x7;
    r.data_size=data_size;
    operand_read(&r);

    cpu.esp-=data_size;

    sr.type = OPR_MEM; 
	sr.addr = cpu.esp-data_size;
    sr.data_size = data_size;
    sr.val=r.val;

    operand_write(&sr);

    return len;
}
