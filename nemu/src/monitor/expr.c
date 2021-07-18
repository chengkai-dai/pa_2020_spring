#include "nemu.h"
#include "cpu/reg.h"
#include "memory/memory.h"

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
	SYMB

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
	{"\\(", '('},
	{"\\)", ')'}};

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

				printf("match regex[%d] at position %d with len %d: %.*s\n", i, position, substr_len, substr_len, substr_start);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */

				switch (rules[i].token_type)
				{
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

static bool check_parentheses(int s, int e, bool *success)
{
	printf("tokens[s].type %c\n", tokens[s].type);
	printf("tokens[e].type %c\n", tokens[e].type);
	bool within_p = true;
	if (tokens[s].type != '(' || tokens[e].type != ')')
	{
		*success = false;
		within_p = false;
		return within_p;
	}

	int length = 0;
	for (int i = s; i <= e; ++i)
	{
		{
			if (tokens[i].type == '(' || tokens[i].type == ')')
				length++;
		}
	}
	printf("length %d",length);
	if (length % 2)
	{
		*success = false;
		within_p = false;
		return within_p;
	}

	int stk[length + 1], top = 1;
	stk[0] = tokens[s].type;
	for (int i = s + 1; i <= e; i++)
	{
		printf("type %c\n",tokens[i].type);
		if(tokens[i].type != ')' && tokens[i].type != '(' )
			continue;

		char ch;
		if (tokens[i].type == ')')
			ch = '(';
		else
			ch = 0;

		if (ch)
		{
			if (top == 0 || stk[top - 1] != ch)
			{
				*success = false;
				within_p = false;
				return within_p;
			}

			top--;
			if (top == 0 && i != e)
				within_p = false;
		}
		else
		{
			stk[top++] = tokens[i].type;
		}
	}
	if (top != 0)
	{
		*success = false;
		within_p = false;
	}
	else
		*success = true;

	return within_p;
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
		val = atoi(tokens[s].str);
	else if (check_parentheses(s, e, success) == true)
		val= eval(s + 1, e - 1, success);
	else{
		if(*success==false)
			return 0;

		printf("\nPlease implement eval at eval\n");
		*success = true;
	}
	return val;
}

uint32_t expr(char *e, bool *success)
{
	if (!make_token(e))
	{
		*success = false;
		return 0;
	}
	printf("nr_token %d\n", nr_token);

	uint32_t val = eval(0, nr_token-1, success);

	// printf("\nPlease implement expr at expr.c\n");
	// assert(0);

	return val;
}
