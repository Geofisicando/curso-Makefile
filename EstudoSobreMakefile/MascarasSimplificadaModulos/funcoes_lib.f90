MODULE funcoes_lib
!
! funcoes_lib.f90 (Fortran)
! 
! Objetivo: Biblioteca de funções do programa teste.f90
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

      FUNCTION soma(a,b)
              REAL, INTENT(IN):: a
              REAL, INTENT(IN):: b
              REAL:: soma

              soma = a+b

      END FUNCTION

END MODULE

