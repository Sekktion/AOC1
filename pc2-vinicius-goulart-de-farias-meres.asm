#Module Name: Programa Divisor
#Funções implementadas: li, la, syscall, move, div, rem.
#Nome: Vinícius Goulart de Farias Meres
#Matrícula: 11811BCC009
#Data de início: 09/09/2019 21:10
#Data de término: 09/09/2019 21:38
#Linguagem: Assembly MIPS
#Neste programa foi feita uma calculadora de divisões

.data #Declarações dos Labels que serão utilizados pelo programa.
	Texto: .asciiz "+++++++++++++++++++++++++++++\n"
	Texto2: .asciiz "Programa para efetuar divisao inteira\n"
	Divisor: .asciiz "Divisor: "
	Dividendo: .asciiz "Dividendo: "
	Resultado: .asciiz "Resultado: "
	Resto: .asciiz "Resto: "
	Espaco: .asciiz "\n"
.text
	li $v0,4	#Atribui o codigo de serviço "4" ao registrador $v0
	la $a0,Texto
	syscall
	
	li $v0,4	#Atribui o codigo de serviço "4" ao registrador $v0
	la $a0,Texto2
	syscall
	
	li $v0,4	#Atribui o codigo de serviço "4" ao registrador $v0
	la $a0,Dividendo
	syscall
	
	li $v0,5 	#Atribui o codigo de serviço "5" ao registrador $v0
	syscall
	
	move $t0,$v0    #Move o conteúdo inserido pelo teclado para $t0
	
	li $v0,4	#Atribui o codigo de serviço "4" ao registrador $v0
	la $a0,Divisor
	syscall
	
	li $v0,5 	#Atribui o codigo de serviço "5" ao registrador $v0
	syscall
	
	move $t1,$v0	#Move o conteúdo inserido pelo teclado para $t1
	
	div $s3,$t0,$t1 #Efetua a divisão entre os numeros de $t0 por $t1 e atribui o resultado a $s3
	
	rem $s4,$t0,$t1 #Efetua a divisão entre os numeros de $t0 por $t1 e atribui o resto a $s4
	
	li $v0,4	#Atribui o codigo de serviço "4" ao registrador $v0
	la $a0,Resultado
	syscall
	
	li $v0,1  	#Atribui o codigo de serviço "1" ao registrador $v0
	la $a0,($s3)	#Printa na tela o resultado
	syscall
	
	li $v0,4	#Atribui o codigo de serviço "4" ao registrador $v0
	la $a0,Espaco
	syscall
	
	li $v0,4	#Atribui o codigo de serviço "4" ao registrador $v0
	la $a0,Resto
	syscall
	
	li $v0,1  	#Atribui o codigo de serviço "1" ao registrador $v0
	la $a0,($s4)	#Printa na tela o resto
	syscall
	
	li $v0,4	#Atribui o codigo de serviço "4" ao registrador $v0
	la $a0,Espaco
	syscall
	
	li $v0,4	#Atribui o codigo de serviço "4" ao registrador $v0
	la $a0,Texto
	syscall
	
	li $v0,10         #Atribui o codigo de serviço "10" ao registrador $v0
	syscall		  #Executa o comando para terminar o programa