#Module Name: Collatz Conjecture
#Fun��es implementadas: li, la, syscall, move, addi, mul, div, rem, beq, beqz, j.
#Nome: Vin�cius Goulart de Farias Meres
#Matr�cula: 11811BCC009
#Data de in�cio: 16/09/2019 20:24
#Data de t�rmino: 16/09/2019 21:06
#Linguagem: Assembly MIPS
#Neste programa foi feito um loop para provar a conjectura de Collatz

.data
	mensagem: .asciiz "Insira o valor inicial: "
	mensagem2: .asciiz "Sequencia: "
	divisoria: .asciiz "---------------------------------------\n"
	espa�amento: .asciiz " "
	pulaLinha: .asciiz "\n"
.text
	main:			#Neste c�digo, manterei $t0 como o numero atual a todo momento.
		li $v0,4	#Atribui codigo de comando "4" para $v0
		la $a0,divisoria
		syscall
		
		li $v0,4	#Atribui codigo de comando "4" para $v0
		la $a0,mensagem
		syscall
		
		li $v0,5	#Atribui codigo de comando "5" para $v0
		syscall
		
		move $t0,$v0
		
		li $v0,4	#Atribui codigo de comando "4" para $v0
		la $a0,mensagem2
		syscall
		
		li $v0,1	#Atribui codigo de comando "1" para $v0
		la $a0,($t0)
		syscall
		
		li $v0,4	#Atribui codigo de comando "4" para $v0
		la $a0,espa�amento
		syscall
		
		while:		#Come�o do loop que rodar� enquanto $t0 for diferente de 1
			beq $t0,1,exit	#branch para sair do loop
			
			rem $t1,$t0,2
			
			beq $t1,1,odd	#branch caso o resto da divis�o $t0/2 seja 1, ou seja, caso $t0 seja impar.
			
			beqz $t1,even	#branch caso o resto da divis�o $t0/2 seja 0, ou seja, caso $t0 seja par.
			
			j while		#retorna ao come�o do loop (Estou em d�vida se este comando era realmente necess�rio, ja que os labels Odd e Even possuem jump para voltar para While)
		exit:
			li $v0,4	#Atribui codigo de comando "4" para $v0
			la $a0,pulaLinha
			syscall
			
			li $v0,4	#Atribui codigo de comando "4" para $v0
			la $a0,divisoria
			syscall
			
			li $v0,10	#Atribui codigo de comando "10" para $v0, termina o programa
			syscall
		odd:
			mul $t0,$t0,3	#Procedimento para caso o $t0 tenha sido atestado como impar no label While
			addi $t0,$t0,1
			
			li $v0,1	#Atribui codigo de comando "1" para $v0
			la $a0,($t0)
			syscall
			
			li $v0,4	#Atribui codigo de comando "4" para $v0
			la $a0,espa�amento
			syscall
			
			j while		#retorna ao label While
		even:
			div $t0,$t0,2	#Procedimento para caso o $t0 tenha sido atestado como par no label While
			
			li $v0,1	#Atribui codigo de comando "1" para $v0
			la $a0,($t0)
			syscall
			
			li $v0,4	#Atribui codigo de comando "4" para $v0
			la $a0,espa�amento
			syscall
			
			j while		#retorna ao label While