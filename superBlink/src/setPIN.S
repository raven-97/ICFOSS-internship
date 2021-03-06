.section .text
.align 2
.globl setPIN

.include "memory_map.inc"
.include "gpio.inc"


.equ LEDON,     0x01

# Selected LED to set comes in register a0
# Desired On/Off state comes in register a1

setPIN:
    addi sp, sp, -16            # Allocate Stack Frame
    sw ra, 12(sp)               # Save the return address onto the stack

    li t0, GPIO_CTRL_ADDR       # Load the base GPIO address
    lw t1, GPIO_OUTPUT_VAL(t0)  # Get the current value of the pins

    beqz a1, pinOff             # Branch to ledOff if the request is to turn off LED
    li t2, LEDON                # Load On/1 to compare if that's what was requested
    beq a1, t2, pinOn           # Branch to ledOn if that's what was requested
    j exit

pinOn:
    xor t1, t1, a0              # Do an XOR to only change the the value of the requested LED
    sw t1, GPIO_OUTPUT_VAL(t0)  # Write the new output so we turn on the requested LED
    j exit

pinOff:
    xor a0, a0, 0xffffffff      # Invert everything so all bits are one except the requested bit
    and t1, t1, a0              # Add the values to only turn off the requested bit
    sw t1, GPIO_OUTPUT_VAL(t0)  # Write the new value to turn off the requested LED

exit:
    lw ra, 12(sp)               # Restore the return address
    addi sp, sp, 16             # Deallocate stack frame
    ret 



 
