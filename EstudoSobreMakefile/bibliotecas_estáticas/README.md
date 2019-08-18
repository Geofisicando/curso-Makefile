#Estudo sobre Makefile

>Nesta pasta coloquei o material sobre bibliotecas estáticas.

Bibliotecas estáticas (arquivos .a) representam nada mais do que uma 
coleção empacotada de sequências em código de máquina. 
Elas são ligadas ao seu programa durante a compilação e seu programa carrega elas aonde ele for. 
Quando você faz uma ligação estática com uma biblioteca você pode apagar ela após a compilação que 
seu programa irá funcionar perfeitamente pois a biblioteca estática é fundida ao seu programa durante a compilação.
O carregador dinâmico do Linux não é utilizado quando um programa com ligações estáticas é iniciado. 
A biblioteca estática inteira é simplesmente “colada” ao arquivo executável que é ligado a essa biblioteca.
