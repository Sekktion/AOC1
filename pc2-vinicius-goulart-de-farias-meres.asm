#Module Name: Programa Divisor
#Fun��es implementadas: li, la, syscall, move, div, rem.
#Nome: Vin�cius Goulart de Farias Meres
#Matr�cula: 11811BCC009
#Data de in�cio: 09/09/2019 21:10
#Data de t�rmino: 09/09/2019 21:38
#Linguagem: Assembly MIPS
#Neste programa foi feita uma calculadora de divis�es

.data #Declara��es dos Labels que ser�o utilizados pelo programa.
	Texto: .asciiz "+++++++++++++++++++++++++++++\n"
	Texto2: .asciiz "Programa para efetuar divisao inteira\n"
	Divisor: .asciiz "Divisor: "
	Dividendo: .asciiz "Dividendo: "
	Resultado: .asciiz "Resultado: "
	Resto: .asciiz "Resto: "
	Espaco: .asciiz "\n"
.text
	li $v0,4	#Atribui o codigo de servi�o "4" ao registrador $v0
	la $a0,Texto
	syscall
	
	li $v0,4	#Atribui o codigo de servi�o "4" ao registrador $v0
	la $a0,Texto2
	syscall
	
	li $v0,4	#Atribui o codigo de servi�o "4" ao registrador $v0
	la $a0,Dividendo
	syscall
	
	li $v0,5 	#Atribui o codigo de servi�o "5" ao registrador $v0
	syscall
	
	move $t0,$v0    #Move o conte�do inserido pelo teclado para $t0
	
	li $v0,4	#Atribui o codigo de servi�o "4" ao registrador $v0
	la $a0,Divisor
	syscall
	
	li $v0,5 	#Atribui o codigo de servi�o "5" ao registrador $v0
	syscall
	
	move $t1,$v0	#Move o conte�do inserido pelo teclado para $t1
	
	div $s3,$t0,$t1 #Efetua a divis�o entre os numeros de $t0 por $t1 e atribui o resultado a $s3
	
	rem $s4,$t0,$t1 #Efetua a divis�o entre os numeros de $t0 por $t1 e atribui o resto a $s4
	
	li $v0,4	#Atribui o codigo de servi�o "4" ao registrador $v0
	la $a0,Resultado
	syscall
	
	li $v0,1  	#Atribui o codigo de servi�o "1" ao registrador $v0
	la $a0,($s3)	#Printa na tela o resultado
	syscall
	
	li $v0,4	#Atribui o codigo de servi�o "4" ao registrador $v0
	la $a0,Espaco
	syscall
	
	li $v0,4	#Atribui o codigo de servi�o "4" ao registrador $v0
	la $a0,Resto
	syscall
	
	li $v0,1  	#Atribui o codigo de servi�o "1" ao registrador $v0
	la $a0,($s4)	#Printa na tela o resto
	syscall
	
	li $v0,4	#Atribui o codigo de servi�o "4" ao registrador $v0
	la $a0,Espaco
	syscall
	
	li $v0,4	#Atribui o codigo de servi�o "4" ao registrador $v0
	la $a0,Texto
	syscall
	
	li $v0,10         #Atribui o codigo de servi�o "10" ao registrador $v0
	syscall		  #Executa o comando para terminar o programa