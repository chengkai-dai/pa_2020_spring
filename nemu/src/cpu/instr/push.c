#include "cpu/instr.h"

make_instr_func(push_r_v){
    OPERAND r, sr;
    r.type = OPR_REG; 
	r.addr = opcode & 0x7;
    operand_read(&r);

    sr.type = OPR_REG; 
	sr.addr = 4;
    operand_read(&sr);

    printf("esp addr 0x%x\n", sr.mem_addr.base);

    return 1;
}
