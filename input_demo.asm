.DATA
prompt  BYTE "Enter your age: ", 0
msg     BYTE "You entered: ", 0

.CODE
main PROC
    ; print the prompt
    mov edx, OFFSET prompt
    call WriteString

    ; get the input
    call ReadInt
    ; eax now holds the age

    ; print the second message
    mov edx, OFFSET msg
    call WriteString

    ; print the number
    call WriteInt
    call Crlf

    exit
main ENDP
END main