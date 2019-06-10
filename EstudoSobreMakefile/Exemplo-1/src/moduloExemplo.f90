MODULE moduloExemplo
!
! moduloExemplo.f90 (Fortran)
! 
! Objetivo: Pequena função para exemplificar a compilação.
! Pede que o usuário insira seu nome.
! 
! Versão 1.0
! 
! Site: http://www.dirackslounge.online
! 
! Programador: Rodolfo A. C. Neves (Dirack) 09/06/2019
! 
! Email: rodolfo_profissional@hotmail.com
! 
! Licença: Software de uso livre e código aberto.

IMPLICIT NONE

CONTAINS

	SUBROUTINE exibirNomeNaTela()

		CHARACTER(32):: nome

		WRITE(*,*) "Qual o seu nome? "
		READ(*,*) nome

		WRITE(*,*) "Seu nome é: ", nome


	END SUBROUTINE

END MODULE
