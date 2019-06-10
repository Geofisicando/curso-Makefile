# Makefile
#
# Objetivo: Exemplificar a compilação de arquivo com módulos utilizando Makefile.
# 
# Site: http://www.dirackslouge.online
#
# Versão 2.0
#
# Programador: Rodolfo A. C. Neves 13/01/2019
# 
# Email (manutenção): rodolfo_profissional@hotmail.com
# 
# Licença: Software de uso livre e código aberto.

all:
	@echo "Exemplo compilação de arquivo com módulos utilizando Makefile"

run:	teste.x
	./teste.x

teste.x:	teste.o
	gfortran *.o -o teste.x

teste.o:	teste.f90 funcoes_lib.o parametros_lib.o
	gfortran -c teste.f90

funcoes_lib.o:	funcoes_lib.f90
	gfortran -c funcoes_lib.f90

parametros_lib.o:	parametros_lib.f90
	gfortran -c parametros_lib.f90

clean:
	rm *.o *.mod teste.x
