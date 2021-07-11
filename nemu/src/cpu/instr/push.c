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

    printf("esp addr base 0x%x\n", sr.mem_addr.base);
    printf("esp addr disp 0x%x\n", sr.mem_addr.disp);
    printf("esp addr index 0x%x\n", sr.mem_addr.index);
    printf("esp addr scale 0x%x\n", sr.mem_addr.scale);

    return 1;
}
