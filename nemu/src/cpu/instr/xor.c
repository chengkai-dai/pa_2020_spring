#include "cpu/instr.h"

make_instr_func(xor_i2a_b){
    int len = 1; 
	OPERAND al, imm;
    al.type = OPR_REG;
	al.data_size = 8;
	al.addr = REG_AL;



	operand_read(&al);
}
