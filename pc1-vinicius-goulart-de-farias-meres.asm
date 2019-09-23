#Module Name: Hello World!
#Fun��es implementadas: li, la, syscall.
#Nome: Vin�cius Goulart de Farias Meres
#Matr�cula: 11811BCC009
#Data de in�cio: 02/09/2019 16:00
#Data de t�rmino: 02/09/2019 16:52
#Linguagem: Assembly MIPS

.data			  #Indica ao compilador onde ser�o declaradas as vari�veis
	Hello: .asciiz "\n*** Hello World! ****\n"    #Atribui o endere�o de "Hello World!" ao Label "Hello"
	
.text			  #Indica ao compilador onde est�o as linhas de comandos
	li $v0,4          #Atribui o codigo de servi�o "4" ao registrador $v0
	la $a0,Hello      #Atribui o endere�o do label "Hello" ao registrador $a0
	syscall		  #Executa os comandos at� ent�o digitados
	li $v0,10         #Atribui o codigo de servi�o "10" ao registrador $v0
	syscall		  #Executa o comando para terminar o programa