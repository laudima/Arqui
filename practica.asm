	.global main ;
    	.text

main:
    ; MULTIPLICACION DE DOS VALORES POSITIVOS

    mov r9, #2     ; primer valor a multiplicar
    mov r10, #3    ; segundo valor a multiplicar
    mov r11, #0    ; resultado de la multiplicación
    bl multiplicacion ; llamar a la función multiplicación

    ; FACTORIAL DE UN NUMERO
    mov r2, #5    ; número para calcular el factorial
    mov r12, #1   ; resultado del factorial
    bl factorial  ; llamar a la función factorial

    ; FACTORIAL DE UN NUMERO USANDO LA FUNCION MULTIPLICACION
    mov r2, #5    ; número para calcular el factorial
    mov r12, #1   ; resultado del factorial
    bl factorial_multi  ; llamar a la función factorial_multi

    ; FIN DEL PROGRAMA
    mov r7, #0x18 ; syscall para terminar el programa
    svc 0         ; llamar al sistema


;3.Realice un programa en ensamblador ARM para el proc TIVA que calcule la multipliación
;de los valores Almacenados en los registros R9 y R10 y almacene el resultado en R11
;(el programa debe implemtarse con el uso de la sumas).

;Suponemos que los valores de los registros R9 y R10 son positivos
multiplicacion:
    mov r11, #0             ; Inicializar r11 a 0, para el resultado acumulado
    mov r0, r10             ; Guardar el valor de r10 en r0 como contador

loop:
    cmp r0, #0              ; Comparar el contador con 0
    beq fin_multiplicacion  ; Si el contador es 0, terminar el bucle

    add r11, r11, r9        ; Sumar r9 al resultado acumulado en r11
    subs r0, r0, #1         ; Restar 1 al contador

    b loop                  ; Repetir el bucle

fin_multiplicacion:
    bx lr                   ; lr "Link Register", Retornar de la función



;4.Realice un programa en ensamblador ARM para el proc TIVA que calcule el factorial
; usando la funcion multiplicacion y almacene el resultado en R12.

factorial:
    mov r12, #1         ; Inicializar r12 a 1, para el resultado del factorial
    mov r1, r2          ; Guardar el valor de r2(n, el numero a calcular) en r1 como contador

factorial_loop:
    subs r1, r1, #1     ; Restar 1 al contador
    cmp r1,#0           ; comparar el contador con 0
    beq fin_factorial   ; Si el contador es 0, terminar el bucle
    mul r2, r2, r1      ; Multiplicar r2 por el contador
    b factorial_loop    ; Repetir el bucle

fin_factorial:
    mov r12, r2         ; Guardar el resultado del factorial en r12
    bx lr               ; lr "Link Register", Retornar de la función

;5. Factorial usando la función multiplicación

factorial_multi:
    mov r12, r2         ; Inicializar r12 como el resultado total
    mov r1, r2          ; Guardar el valor de r2(n, el numero a calcular) en r1 como contador

factorial_multi_loop:
    subs r1, r1, #1         ; Restar 1 al contador
    cmp r1,#0              ; Comparar el contador con 0
    beq fin_factorial_multi ; Si el contador es 0, terminar el bucle
    mov r9, r12             ; Guardar el resultado acumulado en r9
    mov r10, r1             ; Guardar el contador en r10
    bl multiplicacion       ; Llamar a la función multiplicación
    mov r12, r11            ; Guardar el resultado de la multiplicación en r12
    b factorial_multi_loop  ; Repetir el bucle

fin_factorial_multi:
    bx lr                   ; lr "Link Register", Retornar de la función

.end
