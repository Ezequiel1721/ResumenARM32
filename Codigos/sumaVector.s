/*    
@@
@@ Instituto Tecnologico de Tijuana
@@ Depto de Sistemas y Computación
@@ Ing. En Sistemas Computacionales
@@   
@@ Autor : Ezequiel Galván Rodríguez @nickname: Ezequiel1721
@@ Repositorio: https://github.com/Ezequiel1721/ResumenARM32.git
@@ Fecha de revisión: 23/10/2020
@@ 
@
@ Objetivo del programa:
@    Suma de elementos de un vector

@-------------------------------------------------------------------------
@                               Sección de Datos
@-------------------------------------------------------------------------
*/

.data

var1 :	.asciz "La suma es %d\n"
var2 :	.word 128, 32, 100, -30, 124


/*
@--------------------------------------------------------------------------
@                               Sección de código
@--------------------------------------------------------------------------
*/

.text
.global main

/* Salvamos registros */
main :	push { r4, lr}

/* Inicializamos variables y apuntamos r2 a var2 */
	mov r0, #5
	mov r1, #0
	ldr r2, = var2

/* Bucle que hace la suma */
bucle : ldr r3, [r2], #4
	add r1, r1, r3
	subs r0, r0, #1
	bne bucle

/* Imprimimos resultado */
	ldr r0, = var1
	bl printf

/* Recuperamos registros y salimos */
	pop {r4, lr}
	bx lr
