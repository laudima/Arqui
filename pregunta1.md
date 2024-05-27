# Codificacion de Instrucciones (Intel 32 bits, ARM M4) 

**Intel 32-bit (IA-32)**
- *Prefijos de Instrucción*: Hasta 4 bytes (32 bits), opcionales.
- *Opcode*: De 1 a 3 bytes (8 a 24 bits).
- *ModR/M*: 1 byte (8 bits), opcional, usado para especificar operandos.
- *SIB*: 1 byte (8 bits), opcional, usado para escalado de índice y base.
- *Desplazamiento*: De 1 a 4 bytes (8 a 32 bits), opcional, usado para direccionamiento.
- *Inmediato*: De 1 a 4 bytes (8 a 32 bits), opcional, usado para valores constantes.

*ARM M4 (ARMv7-M)*
- *Instrucciones Thumb*: Mayormente 16 bits (2 bytes), algunas extendidas a 32 bits (4 bytes).
- *Campos de Operación*: Varían según la instrucción, pero típicamente incluyen:
  - *Opcode*: Generalmente 6 a 11 bits.
  - *Operandos*: Registros o valores inmediatos, el tamaño varía.
  - *Condición*: 4 bits para instrucciones condicionales.

  ### Fuentes 
1) [An Introduction to Intel 32-bit Instruction Decoding - Medium](https://medium.com/@g.c.dassanayake/an-introduction-to-intel-32-bit-instruction-decoding-9b3b0c15bebb)
2) [Documentation – Arm Developer](https://developer.arm.com/documentation/ddi0439/b/Programmers-Model/Instruction-set-summary/Cortex-M4-instructions?lang=en)
3) [A Beginners' Guide to x86-64 Instruction Encoding - SysTutorials](https://www.systutorials.com/beginners-guide-x86-64-instruction-encoding/)
4) [Assembly instruction length of 32-bit program - Stack Overflow](https://stackoverflow.com/questions/60100987/assembly-instruction-length-of-32-bit-program)
5) [A Tiny Guide to Programming in 32-bit x86 Assembly Language](https://cs.dartmouth.edu/~sergey/cs258/tiny-guide-to-x86-assembly.pdf)
6) [x86 instruction listings - Wikipedia](https://en.wikipedia.org/wiki/X86_instruction_listings)
7) [Documentation – Arm Developer](https://developer.arm.com/documentation/ddi0406/cb/Application-Level-Architecture/ARM-Instruction-Set-Encoding)
8) [Documentation – Arm Developer](https://developer.arm.com/documentation/ddi0406/c/Application-Level-Architecture/Instruction-Details/Format-of-instruction-descriptions/Instruction-encodings?lang=en)
9) [Which instruction encoding is supported by a ARM processor ....](https://stackoverflow.com/questions/77572488/which-instruction-encoding-is-supported-by-a-arm-processor-particularly-a-corte)
10) [The ARM Instruction Set - University of Texas at Austin](https://users.ece.utexas.edu/~valvano/EE345M/Arm_EE382N_4.pdf)