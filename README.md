# Unaligned Memory Access in x86 Assembly

This repository demonstrates a common error in assembly programming: unaligned memory access.  Unaligned memory access occurs when an instruction tries to access data at a memory address that is not properly aligned for its size. For example, a 4-byte integer should be at an address that's a multiple of 4. Accessing a 4-byte integer from an address that's not a multiple of 4 will result in an exception on some processors.

**The Problem:**
The `mov eax, [ebx + 5*ecx]` instruction in `bug.asm` calculates the memory address using `ebx + 5*ecx`.  If the result is not a multiple of 4, accessing the 4-byte value at that address can cause an exception or incorrect behavior.

**The Solution:**
The `bugSolution.asm` file demonstrates how to align the memory access and rectify this issue, either by using appropriate data structures or more carefully calculating the addresses.

**How to reproduce**: 
1. Assemble and link both asm files.
2. Run the resulting executables, observing any errors or unexpected behavior.