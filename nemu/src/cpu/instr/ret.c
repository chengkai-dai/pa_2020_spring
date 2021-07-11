#include "cpu/instr.h"

make_instr_func(ret_near){

    OPERAND rsp;

    rsp.type = OPR_MEM;
    rsp.addr = cpu.esp;
    rsp.data_size = data_size;

    operand_read(&rsp);

    uint32_t ret_eip=rsp.val;

    cpu.esp+=32;

    cpu.eip=ret_eip;

    printf("ret eip 0x%x\n",ret_eip);
    printf("ret len %d\n",(int)ret_eip-(int)eip);
    return (int)ret_eip-(int)eip;

    // len += data_size / 8;

    // OPERAND rel;
    // rel.type = OPR_IMM;
    // rel.sreg = SREG_CS;
    // rel.data_size = data_size;
    // rel.addr = eip + 1;

    // operand_read(&rel);

    // int offset = sign_ext(rel.val, data_size);

    // cpu.eip += offset;
    // printf("len %d\n",len);
    // printf("offset 0x%x\n",offset);
    // return len;
}
