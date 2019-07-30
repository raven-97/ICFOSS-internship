.section .text
.align 2
.globl setupPIN

#include "memory_map.inc"
#include "gpio.inc"

setupPIN:                              
    addi sp, sp, -16                   //allocate stack frame
    sw ra, 12(sp)                     //save adress to the stack
    li t0, GPIO_CTRL_ADDR            // load GPIO conrol address to the temp reister
    lw t1, a0          //get rgb pin offset

    sw t1, GPIO_OUTPUT_EN(t0)     // enable output on rgb pins
    sw t1, GPIO_OUTPUT_XOR(t0)   // genreally the pins are active low, this is to invert them.
    sw x0, GPIO_OUTPUT_VAL(t0)  //x0 register is always 0. we set all rgb pins to 0.
    

    lw ra, 12(sp)            //retrieving return address from stack pointer
    addi sp, sp, 16         // de-allocating stack frame
    ret                    // return to c- code yaaay! my very first RISC V Assembly code
                 
