# Exemplo Makefile compilação simples

all:
	@echo "Exemplo Makefile simples"

run:	teste.x
	./teste.x

teste.x:	teste.o
	gfortran teste.o -o teste.x

teste.o:	teste.f90
	gfortran -c teste.f90

clean:
	rm *.o
	rm teste.x
