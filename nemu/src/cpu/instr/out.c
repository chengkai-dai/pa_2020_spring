#include "cpu/instr.h"
#include "device/port_io.h"

make_instr_func(out_b)
{
#ifdef HAS_DEVICE_SERIAL

    // EE OUT AL,DX

    // Output byte AL to port number in DX

    int len = 1;

    int data_size = 8;

    //dx 16bit reg no.2
    int port_no = cpu.gpr[2]._16;

    //AL byte

    uint32_t out_data = cpu.gpr[0]._8[0] & 0xFF;

    printf("port_no 0x%x\n",port_no);
    printf("out_data 0x%x\n",out_data);

    pio_write(port_no, data_size / 8, out_data);
    printf("out_data finished\n");

    print_asm_0("out al (\%dx)", "", len);

    return len;
#else
    printf("please implement in\n");
    assert(0);
#endif
}

// #include "cpu/instr.h"
// #include "device/port_io.h"

// void out_write(uint32_t size)
// {
//     uint16_t port_addr=cpu.edx & 0xFFFF;
//     size_t data_len=  size;
//     uint32_t data=cpu.eax;
//     pio_write(port_addr,data_len,data);
// }

// make_instr_func(out_b){
// #ifdef HAS_DEVICE_SERIAL
//     out_write(1);
//     return 1;
// #else
//     printf("please implement out\n");assert(0);
// #endif
// }

// make_instr_func(out_v){
// #ifdef HAS_DEVICE_SERIAL
//     out_write(data_size/8);
//     return 1;
// #else
//     printf("please implement out\n");assert(0);
// #endif
// }