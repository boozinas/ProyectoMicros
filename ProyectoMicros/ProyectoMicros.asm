/*
 * ProyectoMicros.asm
 *
 *  Created: 06/12/2018 03:22:36 p. m.
 *   Author: booz
 */ 
 .include "m48def.inc"
	.def temp = r16
	.def contador1 = r17
	.def contador2 = r18
	.def reg0 = r19
	.def reg1 = r20
	.def reg2 = r21
	.def reg3 = r22
	.def reg4 = r23
	.def reg5 = r24
	.def reg6 = r25
	.def reg7 = r26
	.cseg
	.org 0
	rjmp reset
	.org $012
	rjmp recibe
	;Configurando entradas y salidas
recibe:
	ldi temp, $7f
	out ddrc, temp ;puerto C  como salida utilizado para corrimiento de ceros
	out portc, temp
	ldi temp, $ff
	out ddrb, temp
	out porb, temp ; puerto B como salida utilizado para la imagen
	ldi temp, $c0
	out ddrd, temp ; puerto D, bits mas significativos para corriminto de ceros
	out portd, temp

	
	


