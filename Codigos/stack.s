/* Problema 3.6.1
  En este programa lo que se realiza es una pila donde se aguardara el elemento incertado en el registro 0
   @Autor Jaberwooc
   @Fecha 10 de diciembre de 2021
    */ 
.global main

main:
     mov   r0, #A  /* set up r0 */
     push  {r0}    /* save r0 onto the stack */
     mov   r0, #3  /* overwrite r0 */
     pop   {r0}    /* restore r0 to it's initial state */
     bx    lr      /* finish the program */
