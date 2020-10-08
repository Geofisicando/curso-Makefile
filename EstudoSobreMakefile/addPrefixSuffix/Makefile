# Makefile
# 
# Objetivo: Exemplo sobre funções addprefix e addsuffix.
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

SRC = prog1 prog2 prog3 
PREF = $(addprefix pasta/, $(SRC))
SUFF = $(addsuffix .x, $(SRC))
#SUFF = $(SRC:.f90=.x)

all:
	@echo "Use os comandos 'make prefix' e 'make suffix'"

prefix:
	@echo $(PREF)

suffix:
	@echo $(SUFF)
