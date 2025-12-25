.CODE
main PROC
    ; 1. Load the registers
    mov eax, 1        ; EAX = 1
    mov ebx, 2        ; EBX = 2

    ; 2. Push onto the Stack
    push eax          ; Put 1 on the stack
    push ebx          ; Put 2 on top of the 1

    ; 3. Pop off the Stack (LIFO logic check)
    pop ecx           ; Logic check: ECX gets 2
    pop edx           ; Logic check: EDX gets 1

    exit
main ENDP
END main