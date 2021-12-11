   /* Problema 3.6.4
  En este programa lo que se realiza es dimprimir un texto con el nombre que sea incertado 
   @Autor Jaberwooc
   @Fecha 10 de diciembre de 2021
    */ 
       .section        .bss
        .comm buffer, 48             
        .section        .data
msg:
        .ascii  "** Greeter **\nPlease enter your name: "
        msgLen = . - msg
msg2:
        .ascii  "Hello "
        msg2Len = . - msg2

.section        .text
.globl  main
main:

mov r0, $1
ldr r1, =msg
ldr r2, =msgLen
mov r7, $4
svc $0

mov r7, $3
mov r0, $1
ldr r1, =buffer
mov r2, $0x30
svc $0

mov r0, $1
ldr r1, =msg2
ldr r2, =msg2Len
mov r7, $4
svc $0

mov r0, $1
ldr r1, =buffer
mov r2, $0x30
mov r7, $4
svc $0

mov r7, $1
svc $0
.end
