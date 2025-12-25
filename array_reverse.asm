.DATA
Array DWORD 10,20,30,40,50
count DWORD LENGTHOF Array

.CODE
main PROC
    mov esi, OFFSET Array   ; point to start
    mov ecx, count          ; set loop size

    call ReverseArray
       
    exit 
main ENDP

ReverseArray PROC
    mov edi, esi
    mov edx, ecx ; save copies of our tools
       
L1:
    mov eax, [esi] ; grab value from memory
    push eax       ; save to stack
    add esi, 4     ; move pointer
    loop L1

    ; restore our tools because loop destroyed them
    mov ecx, edx
    mov esi, edi

L2:
    pop eax        ; retrieve from stack
    mov [esi], eax ; write back to memory
    add esi, 4
    loop L2
  
    ret
ReverseArray ENDP
END main