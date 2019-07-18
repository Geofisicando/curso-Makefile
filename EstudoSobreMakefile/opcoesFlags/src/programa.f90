PROGRAM programa
!
! programa.f90 (Fortran)
! 
! Objetivo: Exemplo simples de compilação de programa com dependências
! utilizando arquivos Makefile.
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

USE modulo_lib
IMPLICIT NONE

REAL:: somaAmaisB
REAL:: a=2, b=1

! Some os parâmetros a e b definidos em parametros_lib
somaAmaisB = soma(a,b)

WRITE(*,*) "A soma dos parâmetros a e b é: ", somaAmaisB

END PROGRAM
