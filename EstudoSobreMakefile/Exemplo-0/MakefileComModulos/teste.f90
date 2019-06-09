PROGRAM teste
USE parametros_lib
USE funcoes_lib

IMPLICIT NONE

REAL:: somaAmaisB

! Some os parâmetros a e b definidos em parametros_lib
somaAmaisB = soma(a,b)

WRITE(*,*) "A soma dos parâmetros a e b é: ", somaAmaisB

END PROGRAM
