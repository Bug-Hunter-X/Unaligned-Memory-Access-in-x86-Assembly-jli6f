mov eax, [ebx + 5*ecx] ;This instruction can cause an error if the address calculated by ebx + 5*ecx is not aligned properly.