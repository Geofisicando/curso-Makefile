MODULE moduloExemplo
IMPLICIT NONE

CONTAINS

	SUBROUTINE exibirNomeNaTela()

		CHARACTER(32):: nome

		WRITE(*,*) "Qual o seu nome? "
		READ(*,*) nome

		WRITE(*,*) "Seu nome é: ", nome


	END SUBROUTINE

END MODULE
