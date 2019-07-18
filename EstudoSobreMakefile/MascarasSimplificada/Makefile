# Makefile 
# 
# Objetivo: Exemplo compilação simples de arquivos com Makefile.
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

# Exemplo Makefile compilação simples

CC = gfortran
DEP = teste.x arquivo.x

all:	$(DEP)

# teste.x:	teste.f90
#	gfortran teste.f90 -o teste.x
# arquivo.x:	arquivo.f90
#	gfortran arquivo.f90 -o arquivo.x
%.x:	%.f90
	$(CC) $< -o $@


