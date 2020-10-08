# Makefile
# 
# Objetivo: Exemplo de compilação e utilização de addprefix e addsuffix.
# 
# Site: https://dirack.github.io
# 
# Versão 1.0
# 
# Programador: Rodolfo A C Neves (Dirack) 08/10/2020
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: GPL-3.0 <https://www.gnu.org/licenses/gpl-3.0.txt>.

CC = gfortran
DEP = prog1 teste maisumteste
SRC = $(addsuffix .f90, $(DEP))
EXE = $(addsuffix .x, $(DEP))
TESTSRC = $(addprefix test_, $(SRC))
TESTEXE = $(addprefix test_, $(EXE))

all:	$(EXE)

test:	$(TESTEXE)

%.x:	src/%.f90
	$(CC) $< -o $@

test_%.x:	test/test_%.f90
	$(CC) $< -o $@
