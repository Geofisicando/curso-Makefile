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

SRC = ./fontes
OBJ = ./obj
BIN = ./principal
MOD = ./mod
CC = gfortran

$(BIN)/programa.x:	$(SRC)/programa.f90 $(OBJ)/modulo_lib.o
	$(CC) $(OBJ)/modulo_lib.o $(SRC)/programa.f90 -I $(MOD) -o $(BIN)/programa.x

$(OBJ)/modulo_lib.o:	$(SRC)/modulo_lib.f90
	$(CC) -c $(SRC)/modulo_lib.f90 -J $(MOD) -o $(OBJ)/modulo_lib.o

clean:
	rm $(OBJ)/*.o
	rm $(MOD)/*.mod
	rm $(BIN)/*.x
	
