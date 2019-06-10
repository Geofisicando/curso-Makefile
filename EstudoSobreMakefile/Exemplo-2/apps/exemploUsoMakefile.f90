PROGRAM exemploUsoMakefile
!
! exemploUsoMakefile.f90 (Fortran)
! 
! Objetivo: Exemplo de uso de arquivos Makefile com máscaras e variáveis nas diretivas
! de compilação.
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

USE math_lib
USE input_lib
USE moduloExemplo

IMPLICIT NONE

INTEGER:: i ! inteiro a ser passado pela linha de comandos
REAL:: r ! Real a ser passado pela linha de comandos

WRITE(*,*) "PROGRAMA PRINCIPAL FUNCIONANDO..."

! Utilizando input_lib
! Verificar parâmetros passados pela linha de comandos
 i = merge(.GETINT."i",0, .GET."i")  
 r = merge(.GETREAL."r",0, .GET."r")

! Escreva na tela
WRITE(*,*) i, r


! Utilizando math_lib
WRITE(*,*) "O número PI é: ", PI_
WRITE(*,*) "A gravidade no nível do Equador é: ", g_

! Utilizando moduloExemplo
CALL exibirNomeNaTela()


END PROGRAM
