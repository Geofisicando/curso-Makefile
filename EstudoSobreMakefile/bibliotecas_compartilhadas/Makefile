# Makefile 
# 
# Objetivo: Estudo sobre criação e utilização de bibliotecas compartilhadas
# em FORTRAN.
#
# Versão 1.0
# 
# Site: http://www.dirackslounge.online
# 
# Programador: Rodolfo A. C. Neves (Dirack) 10/06/2019
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: Software de uso livre e código aberto.

CC=gfortran
SRC=$(wildcard *_lib.f90)
DEP=$(SRC:.f90=.o)
SHAREDLIB=libteste.so
MAINSRC=principal.f90
MAIN=$(MAINSRC:.f90=.x)

all: $(DEP) $(SHAREDLIB)

run:	$(MAIN)
	./$<

%.x:	%.f90
	gfortran -Wl,-R -Wl,./ $< -I . -o $@ -L .  -lteste

%.o:	%.f90
	gfortran -fPIC -c $<

%.so:	
	gfortran -shared -o $(SHAREDLIB) ./*.o	

clean:	
	rm *.o
	rm *.mod
	rm *.so
	rm *.x

