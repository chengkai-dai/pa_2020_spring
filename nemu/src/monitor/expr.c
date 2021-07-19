#include "nemu.h"
#include "cpu/reg.h"
#include "memory/memory.h"
#include <elf.h>
#include <stdlib.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

enum
{
	NOTYPE = 256,
	EQ,
	NUM,
	REG,
	SYMB,
	VAR

	/* TODO: Add more token types */

};

static struct rule
{
	char *regex;
	int token_type;
} rules[] = {

	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */

	{" +", NOTYPE}, // white space
	{"\\+", '+'},
	{"[0-9]{1,10}", NUM},
	{"-", '-'},
	{"\\*", '*'},
	{"\\/", '/'},
	{"\\(", '('},
	{"\\)", ')'},
	{"[a-zA-Z_][a-zA-Z0-9_]+", VAR}};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]))

static regex_t re[NR_REGEX];

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex()
{
	int i;
	char error_msg[128];
	int ret;

	for (i = 0; i < NR_REGEX; i++)
	{
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if (ret != 0)
		{
			regerror(ret, &re[i], error_msg, 128);
			assert(ret != 0);
		}
	}
}

typedef struct token
{
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

char *substr(const char *src, size_t start, size_t len)
{
	char *dest = malloc(len + 1);
	if (dest)
	{
		memcpy(dest, src + start, len);
		dest[len] = '\0';
	}
	return dest;
}

static bool make_token(char *e)
{
	int position = 0;
	int i;
	regmatch_t pmatch;

	nr_token = 0;

	while (e[position] != '\0')
	{
		/* Try all rules one by one. */
		for (i = 0; i < NR_REGEX; i++)
		{
			if (regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0)
			{
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;

				//printf("match regex[%d] at position %d with len %d: %.*s\n", i, position, substr_len, substr_len, substr_start);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */

				switch (rules[i].token_type)
				{
				case NOTYPE:
					break;
				default:
					tokens[nr_token].type = rules[i].token_type;
					int j = 0;
					for (; j < substr_len; ++j)
						tokens[nr_token].str[j] = *(substr_start + j);
					tokens[nr_token].str[j] = '\0';
					nr_token++;
				}

				break;
			}
		}

		if (i == NR_REGEX)
		{
			printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}

	return true;
}

static bool check_parentheses(int s, int e)
{
	if (tokens[s].type == '(' && tokens[e].type == ')')
		return true;

	return false;
}

static uint32_t get_varible(char *e, bool *success)
{
	// if (tokens[s].type == '(' && tokens[e].type == ')')
	// 	return true;
	Elf32_Ehdr *elf;
	Elf32_Shdr *sh,*esh;
	Elf32_Phdr *ph, *eph;
	// Elf32_Sym *sy;

#ifdef HAS_DEVICE_IDE
	uint8_t buf[4096];
	ide_read(buf, ELF_OFFSET_IN_DISK, 4096);
	elf = (void *)buf;
	//Log("ELF loading from hard disk.");
#else
	elf = (void *)0x0;
	Log("ELF loading from ram disk.");
#endif
	printf("e_phnum %d\n",elf->e_phnum);
	// printf("check0\n");
	sh = (void *)elf + elf->e_shoff;
	printf("check0\n");
	// printf("check2\n");

	ph = (void *)elf + elf->e_phoff;
	printf("check2\n");

	eph = ph + elf->e_phnum;
	printf("e_phnum %d\n",elf->e_phnum);

	printf("check3\n");

	esh=sh+elf->e_shnum;
	printf("e_shnum %d\n",elf->e_shnum);

	printf("check4\n");
	for (; ph < eph; ph++){}
	for (; sh < esh; sh++){

		// if (sh->sh_type ==	SHT_SYMTAB )
		// {
		// 	printf("check2\n");
		// }
	}
	// {

	// esh = sh + elf->e_shnum;
	// printf("check1\n");
	// for (; sh < esh; sh++)
	// {
	// 	if (sh->sh_type ==	SHT_SYMTAB )
	// 	{
	// 		printf("check2\n");
	// 		// sy = (void *)elf + sh->sh_offset;
	// 		// esy = sy + sh->sh_entsize;
	// 		printf("symbol table entry size %d\n",sh->sh_entsize);

	// 	}
	// }

	return 0;
}

static int dominant_op(int s, int e)
{
	int type_stack[e - s + 2];
	int idx_stack[e - s + 2];

	int top = 0;
	for (int i = s; i <= e; i++)
	{
		char ch;
		if (tokens[i].type == ')')
			ch = '(';
		else
			ch = 0;

		if (ch)
		{
			for (int j = top - 1; j >= 0; --j)
			{
				bool close = (type_stack[j] == '(');
				type_stack[j] = 0;
				idx_stack[j] = INT32_MIN;
				top--;
				if (close)
				{
					break;
				}
			}
		}
		else
		{
			type_stack[top] = tokens[i].type;
			idx_stack[top] = i;
			top++;
		}
	}

	for (int i = top - 1; i >= 0; --i)
	{
		if (type_stack[i] == '+' || type_stack[i] == '-')

			return idx_stack[i];
	}

	for (int i = top - 1; i >= 0; --i)
	{
		if (type_stack[i] == '*' || type_stack[i] == '/')

			return idx_stack[i];
	}

	return 0;
}

static bool valid_expr(int s, int e)
{
	bool success = true;
	//step 1: check lexical exception
	for (int i = s; i <= e; i++)
	{
		if (i > s && (tokens[i].type == NUM || tokens[i].type == VAR) && tokens[i - 1].type == ')')
			return false;

		if (i < e && (tokens[i].type == NUM || tokens[i].type == VAR) && tokens[i + 1].type == '(')
			return false;
	}

	//step 2: check valid parentheses
	int length = 0;
	for (int i = s; i <= e; ++i)
	{
		{
			if (tokens[i].type == '(' || tokens[i].type == ')')
				length++;
		}
	}

	if (length % 2)
		return false;
	int stk[length + 1], top = 0;
	for (int i = s; i <= e; i++)
	{
		if (tokens[i].type != ')' && tokens[i].type != '(')
			continue;

		char ch;
		if (tokens[i].type == ')')
			ch = '(';
		else
			ch = 0;

		if (ch)
		{
			if (top == 0 || stk[top - 1] != ch)
				return false;
			top--;
		}
		else
		{
			stk[top++] = tokens[i].type;
		}
	}
	if (top != 0)
		return false;

	return success;
}

static uint32_t eval(int s, int e, bool *success)
{
	uint32_t val = 0;
	if (s > e)
	{
		printf("eval ERROR: start position is greater than end\n");
		*success = false;
		return 0;
	}
	else if (s == e)
	{
		if (tokens[s].type == NUM)
			val = atoi(tokens[s].str);
		else if (tokens[s].type == VAR)
		{
			// printf("varible %s\n", tokens[s].str);
			val = get_varible(tokens[s].str, success);
		}
	}
	else
	{
		bool within_p = check_parentheses(s, e);

		if (within_p == true)
			val = eval(s + 1, e - 1, success);
		else
		{
			int op = dominant_op(s, e);
			// op = the position of dominant operator in the token expression;
			uint32_t val1 = eval(s, op - 1, success);
			uint32_t val2 = eval(op + 1, e, success);
			// val2 = eval(op + 1, q);
			switch (tokens[op].type)
			{
			case '+':
				return val1 + val2;
				break;
			case '-':
				return val1 - val2;
				break;
			case '*':
				return val1 * val2;
				break;
			case '/':
				return val1 / val2;
				break;

			default:
				assert(0);
				printf("\nPlease implement eval at eval\n");
				assert(0);
			}
		}
	}
	return val;
}

uint32_t expr(char *e, bool *success)
{
	if (!(make_token(e) && valid_expr(0, nr_token - 1)))
	{
		*success = false;
		return 0;
	}

	uint32_t val = eval(0, nr_token - 1, success);

	// printf("\nPlease implement expr at expr.c\n");
	// assert(0);

	return val;
}
