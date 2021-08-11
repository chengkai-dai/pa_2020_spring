#include "cpu/instr.h"
#include "device/port_io.h"

make_instr_func(in_b)
{
#ifdef HAS_DEVICE_SERIAL
    // EC IN AL,DX

    // Input byte from port DX into AL

    int len = 1;

    int data_size_ = 8;

    //dx 16bit reg no.2
    int port_no = cpu.gpr[2]._16;

    uint32_t in_data = pio_read(port_no, data_size_ / 8);

    // printf("port_no 0x%x\n",port_no);
    // printf("in_data 0x%x\n",in_data);

    //al reg no.0

    cpu.gpr[0]._8[0] = in_data & 0xFF;

    print_asm_0("in (\%dx) al", "", len);

    return len;
#else
    printf("please implement in\n");
    assert(0);
#endif
}

make_instr_func(in_v)
{
#ifdef HAS_DEVICE_SERIAL
    // EC IN EAX,DX

    // Input byte from port DX into AL

    int len = 1;

    int data_size_ = 32;

    //dx 16bit reg no.2
    int port_no = cpu.gpr[2]._16;

    uint32_t in_data = pio_read(port_no, data_size_ / 8);

    //al reg no.0

    cpu.eax= in_data;

    print_asm_0("in (\%dx) al", "", len);

    return len;
#else
    printf("please implement in\n");
    assert(0);
#endif
}

// #include "cpu/instr.h"
// #include "device/port_io.h"

// uint32_t get_data(size_t size)
// {
//     uint16_t port_addr=cpu.edx & 0xFFFF;
//     size_t data_len= size;
//     uint32_t data= pio_read(port_addr,data_len);
//     return data;
// }

// make_instr_func(in_b){
// #ifdef HAS_DEVICE_SERIAL
//     cpu.eax=get_data(1);
//     return 1;
// #else
//     printf("please implement in\n");assert(0);
// #endif
// }

// make_instr_func(in_v){
// #ifdef HAS_DEVICE_SERIAL
//     cpu.eax=get_data(data_size/8);
//     return 1;
// #else
//     printf("please implement in\n");assert(0);
// #endif
// }