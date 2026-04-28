.data   ; Used to store initialized(defined) values in RAM that will be accessed at compiletime  
hellomessage:
.ascii "Hello, World!"
hellolen = . - hellostring ; the . shows the end of the string hellomessage and the - used to subtract from the start of hellomessage label to obtain the length of the string 

.intel_syntax noprefix
.global _start
.text ; used to hold executable instructions the CPU runs
_start:    ; a label to show/tell te CPU where our program first starts in

mov rax,1   ;syscall for write
mov rdi,1    ;stdout output should be in terminal
lea rsi,[hellomessage]    ;place the address of hellomessage in rsi register
lea rdi,[hellolen]        ; place the length of the string in rdi
syscall
mov rax,60   ;syscall for exit
xor rdi,rdi   ; exitcode of 0 success
syscall