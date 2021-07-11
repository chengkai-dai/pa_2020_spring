#include "cpu/instr.h"

make_instr_func(add_i2rm_v)
{

    OPERAND imm, r;

    int len = 1;

    len += modrm_rm(eip + 1, &r); 
	r.data_size=data_size;

    printf("r.addr 0x%x\n",r.addr);
    printf("r.val 0x%x\n",r.val);
    printf("r.mem_addr.base 0x%x\n",r.mem_addr.base);
    printf("r.mem_addr.scale 0x%x\n",r.mem_addr.scale);
    printf("r.mem_addr.index 0x%x\n",r.mem_addr.index);
    printf("r.mem_addr.disp 0x%x\n",r.mem_addr.disp);


    // r.data_size = data_size;
    // r.type = OPR_REG;
    // r.addr = instr_fetch(eip + 1, 1) & 0x7;
    // operand_read(&r);

    // len += 1;

    // imm.data_size = data_size;
    // imm.type = OPR_IMM;
    // imm.sreg = SREG_CS;
    // imm.addr = eip + 2;
    // operand_read(&imm);

    // len += data_size / 8;

    // r.val = alu_add(imm.val, r.val, data_size);

    // operand_write(&r);

    return len;
}
