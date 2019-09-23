#Module Name: Hello World!
#Funções implementadas: li, la, syscall.
#Nome: Vinícius Goulart de Farias Meres
#Matrícula: 11811BCC009
#Data de início: 02/09/2019 16:00
#Data de término: 02/09/2019 16:52
#Linguagem: Assembly MIPS

.data			  #Indica ao compilador onde serão declaradas as variáveis
	Hello: .asciiz "\n*** Hello World! ****\n"    #Atribui o endereço de "Hello World!" ao Label "Hello"
	
.text			  #Indica ao compilador onde estão as linhas de comandos
	li $v0,4          #Atribui o codigo de serviço "4" ao registrador $v0
	la $a0,Hello      #Atribui o endereço do label "Hello" ao registrador $a0
	syscall		  #Executa os comandos até então digitados
	li $v0,10         #Atribui o codigo de serviço "10" ao registrador $v0
	syscall		  #Executa o comando para terminar o programa