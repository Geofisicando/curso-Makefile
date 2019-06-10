# Makefile
# 
# Objetivo: Realizar a compilação do Exemplo-2 do estudo 
# sobre arquivos Makefile.
# 
# Versão 1.0
# 
# Site: http://www.dirackslounge.online
# 
# Programador: Rodolfo A. C. Neves (Dirack) 09/06/2019
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: Software de uso livre e código aberto.

SRC = ./src
OBJ = ./obj
MOD = ./mod
BIN = ./bin
APPS = ./apps

all:	libed app

app:	exemploUsoMakefile.x

libed:	input_lib.o \
	math_lib.o \
	moduloExemplo.o 

%.o: 	$(SRC)/%.f90
	gfortran -c $< -J $(MOD) -o $(OBJ)/$@

%.x:	$(APPS)/%.f90
	gfortran $< $(OBJ)/*.o -I $(MOD) -o $(BIN)/$@

run:	exemploUsoMakefile.x
	$(BIN)/$<

help:
	@echo "Makefile do Exemplo-2"

clean:
	@rm ./mod/*.mod && echo "Arquivos .mod removidos com sucesso!" || echo "Não foram encontrados arquivos .mod para remover"
	@rm ./obj/*.o && echo "Arquivos .o removidos com sucesso!" || echo "Não foram encontrados arquivos .o para remover" 
	@rm ./bin/*.x && echo "Arquivos .x removidos com sucesso!" || echo "Não foram encontrados arquivos .x para remover"
