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

all:
	@echo "Exemplo compilação simples de arquivos com Makefile"

run:	teste.x
	./teste.x

teste.x:	teste.o
	gfortran teste.o -o teste.x

teste.o:	teste.f90
	gfortran -c teste.f90

clean:
	rm *.o
	rm teste.x
