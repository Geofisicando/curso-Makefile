MODULE input_lib
!
!       Objetivo: Conjunto de finções para tratar entradas
!       através da linha de comandos.
!
!       Versão 1.0
!
!       Programador: Rodolfo A. C. Neves (Dirack) 30/01/2019
!
!	email(manutenção): rodolfo_profissional@hotmail.com
!
!	Exemplo de uso:
!
!
!               REAL:: r
!               INTEGER:: i
!		CHARACTER(len=5):: str1="10"
!		CHARACTER(len=5):: str2="1.5"
!
!               i = .GET.str1 ! str1 é uma variável do tipo CHARACTER
!               r = .GET.str2 ! str2 é uma variável do tipo CHARACTER
      
IMPLICIT NONE

! As funções GET são referidas pelo operador .GET.
! que é uma interface para facilitar a referência
INTERFACE OPERATOR (.GETINT.)
        MODULE PROCEDURE getint
END INTERFACE

INTERFACE OPERATOR (.GETREAL.)
        MODULE PROCEDURE getreal
END INTERFACE

! O operador .GET. verifica se o parâmetro foi
! passado pela linha de comandos exmplo .GET."e"
! verivica se e foi passado como parâmetro, na forma
! e=10 (parametro=valor)
INTERFACE OPERATOR (.GET.)
       MODULE PROCEDURE get
END INTERFACE

INTERFACE OPERATOR (.GETKEY.)
       MODULE PROCEDURE getkey
END INTERFACE

CONTAINS

	! Verificar se o argumento 'str' foi passado pelo usuário
	FUNCTION get(str)
		LOGICAL:: get
		CHARACTER(len=*),INTENT(IN):: str
		INTEGER:: contador ! contador de argumentos passados
		INTEGER :: i=0 ! Contador de laço
		CHARACTER(len=20) :: arg !recebe argumentos da linha de comando

     		! Conta quantos argumentos foram passados pelo usuário
     		contador=COMMAND_ARGUMENT_COUNT()

		! Se o usuário não passou nenhum argumento retorne
		if(contador==0) then
			get = .false.
			return
		end if

		! laço para ler os argumentos passados
		DO i=1,contador
			! Leia o argumento 'i' e atribua à variável 'arg'
			CALL GET_COMMAND_ARGUMENT(i, arg)

			! Pegue o último caractere não branco de 'arg'
			! para poder retirar apenas o argumento passado,
			! isso quem faz é len_trim.
			! index procura o índice da primeira ocorrência da 
			! substring 'str=' da esquerda p a direita
			! perceba que o índice retornado por index deve ser
			! 1 para indicar que o parâmetro foi passado, se for
			! diferente de um, este parâmetro não foi passado
			if (index(arg(1:len_trim(arg)),str//"=") == 1) then

				get = .true.
				return
			end if

		END DO

		get = .false.
		return

	END FUNCTION get

	! Recebe uma string e converte para INTEGER
	FUNCTION getint(str)
		CHARACTER (len=*), INTENT(IN):: str
		INTEGER:: getint
		INTEGER:: contador, i1, i2, i
		CHARACTER(len=20):: arg

		! Conta quantos argumentos foram passados pelo usuário
     		contador=COMMAND_ARGUMENT_COUNT()

		! laço para ler os argumentos passados
		DO i=1,contador

			! Leia o argumento 'i' e atribua à variável 'arg'
			CALL GET_COMMAND_ARGUMENT(i, arg)

			! Pegue o último caractere não branco de 'arg'
			! para poder retirar apenas o argumento passado,
			! isso quem faz é len_trim.
			! index procura o índice da primeira ocorrência da 
			! substring 'str=' da esquerda p a direita
			! perceba que o índice retornado por index deve ser
			! 1 para indicar que o parâmetro foi passado, se for
			! diferente de um, este parâmetro não foi passado
		
			i1 = index(arg(1:len_trim(arg)),str//"=")

			if ( i1 == 1) then

				! Retire só o valor do argumento passado 
				! na forma 'var=valor'
				i2=index(arg(1:len_trim(arg)),"=") ! índice onde aparece '='

				READ(arg(i2+1:len_trim(arg)) , *) getint
				return
			end if

		END DO
		
		getint = 0
		return

	END FUNCTION getint

	! Recebe uma string e converte para REAL
	FUNCTION getreal(str)
		CHARACTER (len=*), INTENT(IN):: str
		INTEGER:: getreal
		INTEGER:: contador, i1, i2, i
		CHARACTER(len=20):: arg

		! Conta quantos argumentos foram passados pelo usuário
     		contador=COMMAND_ARGUMENT_COUNT()

		!write(*,*) contador

		! laço para ler os argumentos passados
		DO i=1,contador

			! Leia o argumento 'i' e atribua à variável 'arg'
			CALL GET_COMMAND_ARGUMENT(i, arg)

			! Pegue o último caractere não branco de 'arg'
			! para poder retirar apenas o argumento passado,
			! isso quem faz é len_trim.
			! index procura o índice da primeira ocorrência da 
			! substring 'str=' da esquerda p a direita
			! perceba que o índice retornado por index deve ser
			! 1 para indicar que o parâmetro foi passado, se for
			! diferente de um, este parâmetro não foi passado
		
			i1 = index(arg(1:len_trim(arg)),str//"=")

			if ( i1 == 1) then

				! Retire só o valor do argumento passado 
				! na forma 'var=valor'
				i2=index(arg(1:len_trim(arg)),"=") ! índice onde aparece '='

				READ(arg(i2+1:len_trim(arg)) , *) getreal
				return
				
			end if

		END DO

		getreal = 0
		
		return

	END FUNCTION getreal

	! Verificar se o argumento 'str' foi passado pelo usuário
	! Se sim retorna true, se não retorna false
	FUNCTION getkey(str)
		LOGICAL:: getkey
		CHARACTER(len=*),INTENT(IN):: str
		INTEGER:: contador ! contador de argumentos passados
		INTEGER :: i=0 ! Contador de laço
		CHARACTER(len=20) :: arg !recebe argumentos da linha de comando

     		! Conta quantos argumentos foram passados pelo usuário
     		contador=COMMAND_ARGUMENT_COUNT()

		! Se o usuário não passou nenhum argumento retorne
		if(contador==0) then
			getkey = .false.
			return
		end if

		! laço para ler os argumentos passados
		DO i=1,contador
			! Leia o argumento 'i' e atribua à variável 'arg'
			CALL GET_COMMAND_ARGUMENT(i, arg)

			! se o argumento foi passado retorne true
			if (arg(1:len_trim(arg)) == str) then

				getkey = .true.
				return
			end if

		END DO

		getkey = .false.
		return

	END FUNCTION getkey


END MODULE
