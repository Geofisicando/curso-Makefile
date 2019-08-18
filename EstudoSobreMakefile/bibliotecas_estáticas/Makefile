# Makefile 
# 
# Objetivo: Estudo sobre criação e utilização de bibliotecas estáticas
# em FORTRAN.
#
# Versão 1.0
# 
# Site: http://www.dirackslounge.online
# 
# Programador: Rodolfo A. C. Neves (Dirack) 18/06/2019
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: Software de uso livre e código aberto.

CC=gfortran
SRC=$(wildcard *_lib.f90)
DEP=$(SRC:.f90=.o)
STATICLIB=libteste.a
MAINSRC=principal.f90
MAIN=$(MAINSRC:.f90=.x)

all: $(DEP) $(STATICLIB) run

run:	$(MAIN)
	./$<

%.x:	%.f90
	gfortran -static $< -L. -lteste -o $@

%.o:	%.f90
	gfortran -c $<

%.a:
	ar rcs libteste.a $(DEP)

clean:	
	rm *.o
	rm *.mod
	rm *.a
	rm *.x

