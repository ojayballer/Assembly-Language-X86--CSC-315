.DATA
prompt1 BYTE "Enter the first number : ",0
prompt2 BYTE "Enter the second number : ",0
prompt3 BYTE "Enter the third number : ",0
Answer  BYTE "The sum of the 3 integers is : ",0

.CODE
main PROC
    ; --- Input 1 ---
    mov  edx, OFFSET prompt1
    call WriteString
    call ReadInt
    mov  ebx, eax         ; save in EBX

    ; --- Input 2 ---
    mov  edx, OFFSET prompt2
    call WriteString
    call ReadInt
    mov  ecx, eax         ; save in ECX

    ; --- Input 3 ---
    mov  edx, OFFSET prompt3
    call WriteString
    call ReadInt
    ; value keeps in EAX

    ; --- Calculation (Logic inside Main) ---
    add  eax, ebx
    add  eax, ecx

    ; --- Output ---
    mov  edx, OFFSET Answer
    call WriteString
    call WriteInt
    call Crlf

    exit
main ENDP
END main