#include "cpu/instr.h"

make_instr_func(push_r_v){
    printf("push_r_v\n");

    OPERAND r, sr;
    r.type = OPR_REG; 
	r.addr = opcode & 0x7;
    r.data_size=data_size;
    operand_read(&r);

    sr.type = OPR_REG; 
	sr.addr = 4;
    sr.data_size=data_size;

    operand_read(&sr);

    printf("esp addr 0x%x\n", sr.mem_addr.base);

    return 1;
}
