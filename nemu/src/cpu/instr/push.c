#include "cpu/instr.h"

make_instr_func(push_r_v){

    // 1. allocate the space for the pushed value
    // 2. set the memory to the new value

    // step 1

    cpu.esp-=data_size;

    // step 2
    OPERAND r, sr;
    r.type = OPR_REG; 
	r.addr = opcode & 0x7;
    r.data_size=data_size;
    operand_read(&r);

    sr.type = OPR_MEM; 
	sr.addr = cpu.esp;
    sr.data_size = data_size;
    sr.val=r.val;

    operand_write(&sr);

    return 1;
}

make_instr_func(push_rm_v){
    int len=1;
    // step 1
    cpu.esp-=data_size;

    // step 2
    OPERAND rm,sr;
    len+=modrm_rm(eip + 1,&rm);
    operand_read(&rm);

    // r.type = OPR_REG; 
	// r.addr = opcode & 0x7;
    // r.data_size=data_size;
    // operand_read(&r);

    sr.type = OPR_MEM; 
	sr.addr = cpu.esp;
    sr.data_size = data_size;
    sr.val=rm.val;

    operand_write(&sr);

    return len;

}

