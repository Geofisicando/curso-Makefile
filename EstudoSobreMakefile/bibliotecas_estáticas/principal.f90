PROGRAM principal
!
! principal.f90 (Fortran 90)
! 
! Objetivo: Estudo sobre bibliotecas estáticas.
! 
! Site: http://www.dirackslounge.online
! 
! Versão 1.0
! 
! Programador: Rodolfo Dirack 18/08/2019
! 
! Email: rodolfo_profissional@hotmail.com
! 
! Licença: GPL-3.0 <https://www.gnu.org/licenses/gpl-3.0.txt>.
USE teste_1_lib
USE teste_2_lib
USE teste_3_lib

IMPLICIT NONE

	CALL mensagem_1()
	CALL mensagem_2()
	CALL mensagem_3()

END PROGRAM
