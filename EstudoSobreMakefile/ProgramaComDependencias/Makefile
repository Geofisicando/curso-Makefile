# Makefile
#
# Objetivo: Exemplificar a compilação de um programa e suas dependências utilizando Makefile.
# 
# Site: http://www.dirackslouge.online
#
# Versão 1.0
#
# Programador: Rodolfo A. C. Neves 15/06/2019
# 
# Email (manutenção): rodolfo_profissional@hotmail.com
# 
# Licença: Software de uso livre e código aberto.

programa.x:	programa.f90 modulo_lib.o
	gfortran modulo_lib.o programa.f90 -o programa.x

modulo_lib.o:	modulo_lib.f90
	gfortran -c modulo_lib.f90
