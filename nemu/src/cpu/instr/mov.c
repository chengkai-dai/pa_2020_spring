#include "cpu/instr.h"
#include <stdlib.h>

static void instr_execute_2op()
{
        operand_read(&opr_src);
        opr_dest.val = opr_src.val;
        operand_write(&opr_dest);
}

make_instr_impl_2op(mov, r, rm, b)
make_instr_impl_2op(mov, r, rm, v)
make_instr_impl_2op(mov, rm, r, b)
make_instr_impl_2op(mov, rm, r, v)
make_instr_impl_2op(mov, i, rm, b)
make_instr_impl_2op(mov, i, rm, v)
make_instr_impl_2op(mov, i, r, b)
make_instr_impl_2op(mov, i, r, v)
make_instr_impl_2op(mov, a, o, b)
make_instr_impl_2op(mov, a, o, v)
make_instr_impl_2op(mov, o, a, b)
make_instr_impl_2op(mov, o, a, v)

    // make_instr_func(mov_i2r_b){
    //         OPERAND imm,r;

    //         imm.type=OPR_IMM;
    //         imm.addr=eip+1;
    //         imm.data_size=8;

    //         r.data_size=8;
    //         r.type=OPR_REG;
    //         r.addr=opcode & 0x7;

    //         operand_read(&imm);
    //         r.val=imm.val;
    //         operand_write(&r);

    //         return 2;

    // }

    // make_instr_func(mov_i2rm_v){
    //         OPERAND rm,imm;

    //         rm.data_size=data_size;
    //         int len=1;
    //         len+=modrm_rm(eip+1, &rm);

    //         imm.type=OPR_IMM;
    //         imm.addr=eip+len;
    //         imm.data_size=data_size;

    //         operand_read(&imm);
    //         rm.val=imm.val;
    //         operand_write(&rm);

    //         return len+ data_size/8;

    // }

    make_instr_func(mov_zrm82r_v)
{
        int len = 1;
        OPERAND r, rm;
        r.data_size = data_size;
        rm.data_size = 8;
        len += modrm_r_rm(eip + 1, &r, &rm);

        operand_read(&rm);
        r.val = rm.val;
        operand_write(&r);

        print_asm_2("mov", "", len, &rm, &r);
        return len;
}

make_instr_func(mov_zrm162r_l)
{
        int len = 1;
        OPERAND r, rm;
        r.data_size = 32;
        rm.data_size = 16;
        len += modrm_r_rm(eip + 1, &r, &rm);

        operand_read(&rm);
        r.val = rm.val;
        operand_write(&r);
        print_asm_2("mov", "", len, &rm, &r);
        return len;
}

make_instr_func(mov_srm82r_v)
{
        int len = 1;
        OPERAND r, rm;
        r.data_size = data_size;
        rm.data_size = 8;
        len += modrm_r_rm(eip + 1, &r, &rm);

        operand_read(&rm);
        r.val = sign_ext(rm.val, 8);
        operand_write(&r);
        print_asm_2("mov", "", len, &rm, &r);
        return len;
}

make_instr_func(mov_srm162r_l)
{
        int len = 1;
        OPERAND r, rm;
        r.data_size = 32;
        rm.data_size = 16;
        len += modrm_r_rm(eip + 1, &r, &rm);
        operand_read(&rm);
        r.val = sign_ext(rm.val, 16);
        operand_write(&r);

        print_asm_2("mov", "", len, &rm, &r);
        return len;
}

make_instr_func(mov_rm2s_w)
{
#ifdef IA32_SEG
        int len = 1;
        OPERAND rm, s;
        rm.data_size = 16;
        s.data_size = 16;
        len += modrm_rm(eip + 1, &rm);

        MODRM modrm;
        modrm.val = instr_fetch(eip + 1, 1);
        s.type = OPR_SREG;
        s.addr = modrm.reg_opcode;

        operand_read(&rm);
        s.val = rm.val;
        operand_write(&s);
        load_sreg(s.addr);
        print_asm_2("mov", "", len, &rm, &s);

        return len;
#else
        printf("please implement mov_rm2s_w\n");
        assert(0);
#endif
}

make_instr_func(mov_c2r_l)
{
#ifdef IA32_SEG
        int len = 1;

        OPERAND c,rm;
        rm.data_size = 32;
        c.data_size=32;

        MODRM modrm;
        modrm.val = instr_fetch(eip + 1, 1);

        c.type=OPR_CREG;
        c.addr=modrm.reg_opcode;

        len += modrm_rm(eip + 1, &rm);

        operand_read(&c);
        operand_read(&rm);

        rm.val=c.val;

        operand_write(&rm);

        print_asm_2("movc", "", len, &c, &rm);


        return len;
#else
        printf("please implement mov_c2r_l\n");
        assert(0);
#endif
}


make_instr_func(mov_r2c_l){
#ifdef IA32_SEG
        int len = 1;

        OPERAND c,rm;
        rm.data_size = 32;
        c.data_size=32;

        MODRM modrm;
        modrm.val = instr_fetch(eip + 1, 1);

        c.type=OPR_CREG;
        c.addr=modrm.reg_opcode;

        len += modrm_rm(eip + 1, &rm);

        operand_read(&rm);

        c.val=rm.val;

        operand_write(&c);

        print_asm_2("movc", "", len, &rm, &c);

        return len;
#else
        printf("please implement mov_c2r_l\n");
        assert(0);
#endif
}
