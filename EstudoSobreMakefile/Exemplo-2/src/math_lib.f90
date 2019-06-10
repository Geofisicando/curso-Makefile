MODULE math_lib
!
! math_lib.f90 (Fortran)
! 
! Objetivo: Biblioteca de definição de constantes físicas.
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

REAL, PARAMETER:: K_=9E9 ! Constante de Coulomb, N·m^2/C^2 no S.I.
REAL, PARAMETER:: GU_=6.674184E-11 ! Constante gravitacional universal, Nm^2/kg^2 no S.I.
REAL, PARAMETER:: g_=9.81 ! Gravidade ao nível do Equador, m/s^2 no S.I. 
REAL, PARAMETER:: PI_=4*atan(1.) ! Número PI
REAL, PARAMETER:: c_=299792458 ! Velocidade da luz, m/s  


END MODULE
