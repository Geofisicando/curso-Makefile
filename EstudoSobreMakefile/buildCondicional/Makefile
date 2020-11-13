# Makefile 
# 
# Objetivo: Exemplo de build condicional com Makefile.
# 
# Site: https://dirack.github.io
# 
# Versão 1.0
# 
# Programador: Rodolfo A C Neves (Dirack) 12/11/2020
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: GPL-3.0 <https://www.gnu.org/licenses/gpl-3.0.txt>.

all:	exemplo.x

exemplo.x:	
ifeq (f77,$(VAR))
	@echo "Compilação de versão do programa em Fortran 77"
	gfortran exemplo.fpp -o exemplo.x
else
	@echo "Compilação de versão do programa em Fortran 90"
	gfortran exemplo.f90 -o exemplo.x
endif
