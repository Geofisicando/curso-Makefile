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

./bin/programa.x:	./src/programa.f90 ./obj/modulo_lib.o
	gfortran ./obj/modulo_lib.o ./src/programa.f90 -I ./mod -o ./bin/programa.x

./obj/modulo_lib.o:	./src/modulo_lib.f90
	gfortran -c ./src/modulo_lib.f90 -J ./mod -o ./obj/modulo_lib.o

clean:
	rm ./obj/*.o
	rm ./mod/*.mod
	rm ./bin/*.x
	
