#ifndef __UI_H__
#define __UI_H__

#include "nemu.h"

void ui_mainloop(bool autorun);
uint32_t look_up_symtab(char *sym, bool *success);

#endif
