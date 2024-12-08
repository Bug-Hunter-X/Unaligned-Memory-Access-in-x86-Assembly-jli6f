mov ecx, [ebx + 5*ecx] ; Ensure ecx is aligned properly before accessing it
mov eax, ecx ; Accessing ecx(already aligned) instead of the unaligned memory address