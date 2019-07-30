.section .text
.align 2
.globl pinMode1

.include "memory_map.inc"
.include "gpio.inc"
.equ LEDON,     0x01

pinMode1:                              
    addi sp, sp, -16                    //allocate stack frame
    sw ra, 12(sp)                       //save adress to the stack
    li t0, GPIO_CTRL_ADDR               // load GPIO conrol address to the temp reister
    li t1, PIN11_12                   //set PIN offset

    

    beqz a0, OUTput  
    li t2, LEDON           # Branch to OUTput
    beq a0, t2, INput           # Branch to INput
    j exit

INput:
    sw t1, GPIO_INPUT_EN(t0) 
    j exit

OUTput:
    sw t1, GPIO_OUTPUT_EN(t0)
    sw x0, GPIO_OUTPUT_VAL(t0)  //x0 register is always 0. we set all rgb pins to 0.

    
exit:
    lw ra, 12(sp)               # Restore the return address
    addi sp, sp, 16             # Deallocate stack frame
    ret 

   