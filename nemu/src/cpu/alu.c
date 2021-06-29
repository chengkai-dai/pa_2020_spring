#include "cpu/cpu.h"

void set_CF_add(uint32_t result, uint32_t src, size_t data_size)
{
	result = sign_ext(result & (0xFFFFFFFF >> (32 - data_size)), data_size);
	src = sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
	cpu.eflags.CF = result < src;
}

void set_CF_sub(uint32_t src, uint32_t dest, size_t data_size)
{
	dest = sign_ext(dest & (0xFFFFFFFF >> (32 - data_size)), data_size);
	src = sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
	cpu.eflags.CF = src > dest;
}

void set_CF_shl(uint32_t src, uint32_t dest, size_t data_size)
{
	src = sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
	dest = sign_ext(dest & (0xFFFFFFFF >> (32 - data_size)), data_size);
	cpu.eflags.CF = (dest << (src - 1)) >> (data_size - 1);
}

void set_CF_shr(uint32_t src, uint32_t dest, size_t data_size)
{
	src = sign_ext(src & (0xFFFFFFFF >> (32 - data_size)), data_size);
	dest = sign_ext(dest & (0xFFFFFFFF >> (32 - data_size)), data_size);
	cpu.eflags.CF = (dest >> (src - 1)) & 0x1;
}

void set_CF_OF_mul(uint64_t res, size_t data_size)
{
	assert(data_size == 16 || data_size == 8 || data_size == 32);
	switch (data_size)
	{
	case 8:
		cpu.eflags.CF = (res >> 8 != 0);
		cpu.eflags.OF = (res >> 8 != 0);
		break;
	case 16:
		cpu.eflags.CF = (res >> 16 != 0);
		cpu.eflags.OF = (res >> 16 != 0);
		break;
	default:
		cpu.eflags.CF = (res >> 32 != 0);
		cpu.eflags.OF = (res >> 32 != 0);
		break;
	}
}

void set_ZF(uint32_t result, size_t data_size)
{
	result = result & (0xFFFFFFFF >> (32 - data_size));
	cpu.eflags.ZF = (result == 0);
}

void set_PF(uint32_t result)
{

	result = result & 0xFF;
	size_t one_bits = 0;
	while (result != 0)
	{
		one_bits += result & 0x1;
		result = result >> 1;
	}

	cpu.eflags.PF = !(one_bits % 2);
}

void set_SF(uint32_t result, size_t data_size)
{
	//assert(data_size != 0);
	result = sign_ext(result & (0xFFFFFFFF >> (32 - data_size)), data_size);
	//cpu.eflags.SF = (result & (1 << (data_size - 1))) >> (data_size - 1);
	cpu.eflags.SF = sign(result);
}

void set_OF_add(uint32_t result, uint32_t src, uint32_t dest, size_t data_size)
{
	switch (data_size)
	{
	case 8:
		result = sign_ext(result & 0xFF, 8);
		src = sign_ext(src & 0xFF, 8);
		dest = sign_ext(dest & 0xFF, 8);
		break;
	case 16:
		result = sign_ext(result & 0xFFFF, 16);
		src = sign_ext(src & 0xFFFF, 16);
		dest = sign_ext(dest & 0xFFFF, 16);
		break;
	default:
		break;
	}

	if (sign(src) == sign(dest))
	{
		if (sign(src) != sign(result))
			cpu.eflags.OF = 1;
		else
			cpu.eflags.OF = 0;
	}
	else
		cpu.eflags.OF = 0;
}

void set_OF_sub(uint32_t result, uint32_t src, uint32_t dest, size_t data_size)
{
	switch (data_size)
	{
	case 8:
		result = sign_ext(result & 0xFF, 8);
		src = sign_ext(src & 0xFF, 8);
		dest = sign_ext(dest & 0xFF, 8);
		break;
	case 16:
		result = sign_ext(result & 0xFFFF, 16);
		src = sign_ext(src & 0xFFFF, 16);
		dest = sign_ext(dest & 0xFFFF, 16);
		break;
	default:
		break;
	}

	if (sign(src) != sign(dest))
	{
		if (sign(dest) != sign(result))
			cpu.eflags.OF = 1;
		else
			cpu.eflags.OF = 0;
	}
	else
		cpu.eflags.OF = 0;
}

void set_OF_shl(uint32_t res, size_t data_size)
{
	switch (data_size)
	{
	case 8:
		res = sign_ext(res & 0xFF, 8);
		break;
	case 16:
		res = sign_ext(res & 0xFFFF, 16);
		break;
	default:
		break;
	}

	if (cpu.eflags.CF == sign(res))
		cpu.eflags.OF = 0;
	else
		cpu.eflags.OF = 1;
}

void set_OF_shr(uint32_t res, size_t data_size)
{
	switch (data_size)
	{
	case 8:
		res = sign_ext(res & 0xFF, 8);
		break;
	case 16:
		res = sign_ext(res & 0xFFFF, 16);
		break;
	default:
		break;
	}

	cpu.eflags.OF = sign(res);
}

uint32_t alu_add(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_add(src, dest, data_size);
#else
	uint32_t res = 0;
	res = dest + src;

	set_CF_add(res, src, data_size);
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	set_OF_add(res, src, dest, data_size);

	return res & (0xFFFFFFFF >> (32 - data_size));

#endif
}

uint32_t alu_adc(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_adc(src, dest, data_size);
#else
	uint32_t res = 0;
	res = dest + src;
	if (cpu.eflags.CF == 0)
		set_CF_add(res, src, data_size);
	else
	{
		set_CF_add(res, src, data_size);
		uint32_t backup_res = res;
		res = res + 1;
		if (cpu.eflags.CF == 0)
			set_CF_add(res, backup_res, data_size);
	}
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	set_OF_add(res, src, dest, data_size);
	return res & (0xFFFFFFFF >> (32 - data_size));

#endif
}

uint32_t alu_sub(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sub(src, dest, data_size);
#else
	uint32_t res = 0;
	res = dest - src;

	set_CF_sub(src, dest, data_size);
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	set_OF_sub(res, src, dest, data_size);

	return res & (0xFFFFFFFF >> (32 - data_size));
#endif
}

uint32_t alu_sbb(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sbb(src, dest, data_size);
#else
	uint32_t res = 0;
	res = dest - src;
	if (cpu.eflags.CF == 0)
		set_CF_sub(src, dest, data_size);
	else
	{
		set_CF_sub(src, dest, data_size);
		if (cpu.eflags.CF == 0)
			set_CF_sub(1, res, data_size);

		res = res - 1;
	}
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);
	set_OF_sub(res, src, dest, data_size);

	return res & (0xFFFFFFFF >> (32 - data_size));
#endif
}

uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_mul(src, dest, data_size);
#else
	uint32_t x = src;
	uint32_t y = dest;
	uint32_t xhigh = 0;

	uint16_t x0 = (uint16_t)x;
	uint16_t x1 = x >> 16;
	uint16_t y0 = (uint16_t)y;
	uint16_t y1 = y >> 16;

	uint32_t p11 = x1 * y1, p01 = x0 * y1;
	uint32_t p10 = x1 * y0, p00 = x0 * y0;

	//https://stackoverflow.com/questions/28868367/getting-the-high-part-of-64-bit-integer-multiplication
	/*
        This is implementing schoolbook multiplication:

                x1 x0
        X       y1 y0
        -------------
                   00  LOW PART
        -------------
                00
             10 10     MIDDLE PART
        +       01
        -------------
             01 
        + 11 11        HIGH PART
        -------------
    */

	// 64-bit product + two 32-bit values
	uint32_t middle = p10 + (p00 >> 16) + (uint16_t)p01;

	/*
        Proof that 64-bit products can accumulate two more 32-bit values
        without overflowing:

        Max 32-bit value is 2^32 - 1.
        PSum = (2^32-1) * (2^32-1) + (2^32-1) + (2^32-1)
             = 2^64 - 2^32 - 2^32 + 1 + 2^32 - 1 + 2^32 - 1
             = 2^64 - 1
        Therefore it cannot overflow regardless of input.
    */

	// 64-bit product + two 32-bit values
	xhigh = p11 + (middle >> 16) + (p01 >> 16);

	// Add LOW PART and lower half of MIDDLE PART
	uint32_t xlow = (middle << 16) | (uint16_t)p00;

	uint64_t res = ((uint64_t)xhigh << 32) | xlow;

	set_CF_OF_mul(res, data_size);

	return res & (0xFFFFFFFFFFFFFFFF >> (64 - data_size*2));
#endif
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_imul(src, dest, data_size);
#else
	int64_t res= (int64_t)src * (int64_t) dest;

	return res;
#endif
}

// need to implement alu_mod before testing
uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_div(src, dest, data_size);
#else
	assert(src!=0);
	uint32_t res=0;
	res=(uint32_t)(dest / src);
	return res & (0xFFFFFFFF >> (32 - data_size));

#endif
}

// need to implement alu_imod before testing
int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_idiv(src, dest, data_size);
#else
	assert(src!=0);
	int32_t res=0;
	res=(int32_t)((int64_t)dest / (int64_t)src);
	return res;
#endif
}

uint32_t alu_mod(uint64_t src, uint64_t dest)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_mod(src, dest);
#else
	uint32_t res=0; 
	res=(uint32_t)dest%src;
	return res;

#endif
}

int32_t alu_imod(int64_t src, int64_t dest)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_imod(src, dest);
#else
	int32_t res=0; 
	res=(int32_t)dest%src;
	return res;
#endif
}

uint32_t alu_and(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_and(src, dest, data_size);
#else
	uint32_t res = 0;
	res = src & dest;
	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	set_PF(res);
	set_SF(res, data_size);
	set_ZF(res, data_size);
	return res & (0xFFFFFFFF >> (32 - data_size));
#endif
}

uint32_t alu_xor(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_xor(src, dest, data_size);
#else
	uint32_t res = 0;
	res = src ^ dest;
	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	set_PF(res);
	set_SF(res, data_size);
	set_ZF(res, data_size);
	return res & (0xFFFFFFFF >> (32 - data_size));
#endif
}

uint32_t alu_or(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_or(src, dest, data_size);
#else
	uint32_t res = 0;
	res = src | dest;
	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	set_PF(res);
	set_SF(res, data_size);
	set_ZF(res, data_size);
	return res & (0xFFFFFFFF >> (32 - data_size));
#endif
}

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size)
{
	//OF, SF, ZF, PF, CF
#ifdef NEMU_REF_ALU
	return __ref_alu_shl(src, dest, data_size);
#else

	uint32_t res = 0;
	res = dest << src;
	set_CF_shl(src, dest, data_size);
	set_OF_shl(res, data_size);
	set_ZF(res, data_size);
	set_PF(res);
	set_SF(res, data_size);
	// printf("data_size %d ",data_size);
	// printf(" src 0x%x ",src);
	// printf(" dest 0x%x ",dest);
	// printf(" res 0x%x  ",res & (0xFFFFFFFF >> (32 - data_size)));
	// printf(" cpu.eflags.CF %x\n ",cpu.eflags.CF);
	return res & (0xFFFFFFFF >> (32 - data_size));
#endif
}

uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_shr(src, dest, data_size);
#else
	uint32_t res = 0;
	src = src & (0xFFFFFFFF >> (32 - data_size));
	dest = dest & (0xFFFFFFFF >> (32 - data_size));
	res = dest >> src;

	set_CF_shr(src, dest, data_size);
	set_OF_shr(res, data_size);
	set_ZF(res, data_size);
	set_PF(res);
	set_SF(res, data_size);
	// printf("data_size %d ", data_size);
	// printf(" src 0x%x ", src);
	// printf(" dest 0x%x ", dest);
	// printf(" res 0x%x  ", res & (0xFFFFFFFF >> (32 - data_size)));
	// printf(" cpu.eflags.CF %x\n ", cpu.eflags.CF);
	return res & (0xFFFFFFFF >> (32 - data_size));

#endif
}

uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sar(src, dest, data_size);
#else
	uint32_t res = 0;
	src = src & (0xFFFFFFFF >> (32 - data_size));
	dest = dest & (0xFFFFFFFF >> (32 - data_size));
	if ((dest >> (data_size - 1)) == 1)
		res = (dest >> src) | (~((0xFFFFFFFF >> (32 - data_size)) >> src));
	else
		res = dest >> src;

	set_CF_shr(src, dest, data_size);
	set_OF_shr(res, data_size);
	set_ZF(res, data_size);
	set_PF(res);
	set_SF(res, data_size);
	return res & (0xFFFFFFFF >> (32 - data_size));

#endif
}

uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sal(src, dest, data_size);
#else
	uint32_t res = 0;
	res = dest << src;
	set_CF_shl(src, dest, data_size);
	set_OF_shl(res, data_size);
	set_ZF(res, data_size);
	set_PF(res);
	set_SF(res, data_size);
	return res & (0xFFFFFFFF >> (32 - data_size));
#endif
}
