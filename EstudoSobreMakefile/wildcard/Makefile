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

SRC = $(wildcard ./src/*.f90)
DEP = $(SRC:.f90=.o)
SRCBIN = $(wildcard ./app/*.f90)
BIN = $(SRCBIN:.f90=.x)
CC = gfortran

all:	$(DEP) $(BIN)

%.x:	%.f90
	$(CC) $(DEP) $< -I ./src -o $@

%.o:	%.f90
	$(CC) -c $< -J ./src -o $@

clean:
	rm $(DEP) $(DEP:.o=.mod) $(BIN)












