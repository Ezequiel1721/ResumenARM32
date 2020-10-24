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
@    Suma de dos números utilizando variables tipo byte
@-------------------------------------------------------------------------
@                               Sección de Datos
@-------------------------------------------------------------------------
*/

.data

var1 :	.byte 0b00110010
	.align
var2 :	.byte 0b11000000
	.align

/*
@--------------------------------------------------------------------------
@                               Sección de código
@--------------------------------------------------------------------------
*/

.text
.global main

main :	ldr r1, = var1 		/* r1 <- & var1 */
	ldrsb r1, [r1] 		/* r1 <- *r1 */
	ldr r2, = var2 		/* r2 <- & var2 */
	ldrsb r2, [r2] 		/* r2 <- *r2 */
	add r0, r1, r2 		/* r0 <- r1 + r2 */
	bx lr