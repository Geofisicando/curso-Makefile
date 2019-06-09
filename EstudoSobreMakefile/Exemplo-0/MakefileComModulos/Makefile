# Exemplo de compilação com Makefile de Arquivo com módulos

all:
	@echo "Exemplo compilação com Makefile de arquivo com módulos"

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
