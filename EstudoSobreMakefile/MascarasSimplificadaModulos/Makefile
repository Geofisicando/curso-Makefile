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

DEP = funcoes_lib.o parametros_lib.o teste.o
CC = gfortran
BIN = teste.x

all:	$(DEP) $(BIN)

# A regra abaixo traduzida
#teste.x:	teste.o
#	gfortran *.o -o teste.x

%.x:	%.o
	$(CC) $(DEP) -o $@

# A regra abaixo traduzida
# arquivo.o:	arquivo.f90
#	gfortran -c arquivo.f90

%.o:	%.f90
	$(CC) -c $<

clean:
	rm $(DEP) *.mod $(BIN)
