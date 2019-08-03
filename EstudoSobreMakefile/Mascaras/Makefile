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

SRC = ./src
OBJ = ./obj
BIN = ./bin
MOD = ./mod
CC = gfortran

$(BIN)/programa.x:	$(SRC)/programa.f90 $(OBJ)/modulo_lib.o
	$(CC) $(OBJ)/modulo_lib.o $< -I $(MOD) -o $@
# gfortran $(OBJ)/modulo_lib.o $(SRC)/programa.f90 -I $(MOD) -o $(BIN)/programa.x

# A regra abaixo traduzida
#./obj/modulo_lib.o:	./src/modulo_lib.f90
#	gfortran -c ./src/modulo_lib.f90 -J ./mod -o ./obj/modulo_lib.o

$(OBJ)/%.o:	$(SRC)/%.f90
	$(CC) -c $< -J $(MOD) -o $@

clean:
	rm $(OBJ)/*.o
	rm $(MOD)/*.mod
	
