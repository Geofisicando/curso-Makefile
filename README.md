# curso-Makefile

> Material do curso sobre arquivos Makefile.

### Resumo:

O objetivo de Makefile é definir regras de compilação para projetos de software. 
Tais regras são definidas em arquivo chamado Makefile. O programa make interpreta o conteúdo do Makefile 
e executa as regras lá definidas. 
Alguns Sistemas Operacionais trazem programas similares ao make, tais como gmake, nmake, tmake, etc. 
O programa make pode variar de um sistema a outro pois não faz parte de nenhuma normalização .

O texto contido em um Makefile é usado para a compilação, ligação(linking), 
montagem de arquivos de projeto entre outras tarefas como limpeza de arquivos temporários, 
execução de comandos, etc.

### Vantagens do uso do Makefile:

Evita a compilação de arquivos desnecessários. Por exemplo, se seu programa utiliza 120 bibliotecas e 
você altera apenas uma, o make descobre (comparando as datas de alteração dos arquivos fontes com 
as dos arquivos anteriormente compilados) qual arquivo foi alterado e compila apenas a biblioteca necessária.
Automatiza tarefas rotineiras como limpeza de vários arquivos criados temporariamente na compilação.
Pode ser usado como linguagem geral de script embora seja mais usado para compilação.

Referências:

* [Resumo sobre Makefile](https://pt.wikibooks.org/wiki/Programar_em_C/Makefiles)

* [Documentação Oficial (GNU make)](https://www.gnu.org/software/make/manual/make.html)
