# Makefile
# 
# Objetivo: Realizar a compilação do Exemplo-1 do estudo 
# sobre arquivos Makefile.
# 
# Versão 1.0
# 
# Site: http://www.dirackslounge.online
# 
# Programador: Rodolfo A. C. Neves (Dirack) 07/06/2019
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: Software de uso livre e código aberto.

all:	
	@echo "Makefile do Exemplo-1"

input_lib.o: 
	gfortran -c ./src/input_lib.f90 -J ./mod/ -o ./obj/input_lib.o

math_lib.o:
	gfortran -c ./src/math_lib.f90 -J ./mod/ -o ./obj/math_lib.o

moduloExemplo.o:
	gfortran -c ./src/moduloExemplo.f90 -J ./mod/ -o ./obj/moduloExemplo.o

exemploUsoMakefile.o:	./obj/input_lib.o ./obj/math_lib.o ./obj/moduloExemplo.o
	gfortran -c ./apps/exemploUsoMakefile.f90 -I ./mod/ -o ./obj/exemploUsoMakefile.o

exemploUsoMakefile.x:	./obj/moduloExemplo.o
	gfortran ./obj/*.o -o ./bin/exemploUsoMakefile.x

run:	exemploUsoMakefile.x
	./bin/exemploUsoMakefile.x

clean:
	@rm ./mod/*.mod && echo "Arquivos .mod removidos com sucesso!" || echo "Não foram encontrados arquivos .mod para remover"
	@rm ./obj/*.o && echo "Arquivos .o removidos com sucesso!" || echo "Não foram encontrados arquivos .o para remover" 
	@rm ./bin/*.x && echo "Arquivos .x removidos com sucesso!" || echo "Não foram encontrados arquivos .x para remover"
