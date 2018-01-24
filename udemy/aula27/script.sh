#!/bin/bash

#	Metacaracteres
#	^ (circunflexo): representa o começo da linha	
#	$ (cifrão): representa o fim da linha
#	. (ponto): casa um caractere qualquer
#	.* (curinga): casa qualquer coisa, é tudo ou nada
#	a+ (mais): casa a letra "a" uma ou mais vezes
#	a* (asterisco): casa a letra "a" zero ou mais vezes
#	a? (opcional): casa a letra "a" zero ou uma vezes
#	a{2} (chaves): casa a letra "a" duas vezes
#	a{2,} (chaves): casa a letra "a" no mínimo duas vezes
#	[abc] (lista): casa as letras "a" ou "b" ou "c"
#	[a-d] (lista): casa as letras "a" ou "b" ou "c" ou "d"
#	[^abc] (lista): casa qualquer caractere, exceto "a", "b" e "c"
#	(isso|aquilo) (Ou): casa as strings "isso" ou "aquilo"

# obtém todas as linhas que começam com "python"
echo -e "\nMostrando todas as linhas que começam com python...\n"
linhas_python=`grep ^python $1`
echo -e "$linhas_python\n"

# obtém todas as linhas que terminam com "Ritchie"
echo -e "Mostrando todas as linhas que terminam com Ritchie...\n"
linhas_ritchie=`grep Ritchie$ $1`
echo -e "$linhas_ritchie\n"

# obtém todas as linhas que começam com python ou Python
echo -e "\nMostrando todas as linhas que começam com python ou Python...\n"
linhas_python_ou_Python=`grep [Pp]ython $1`
echo -e "$linhas_python_ou_Python\n"

# obtém todas as linhas que começam com vogais
echo -e "\nMostrando todas as linhas que começam com vogais...\n"
linhas_vogais=`grep ^[aeiouAEIOU] $1`
echo -e "$linhas_vogais\n"

# obtém todas as linhas cuja segunda letra é a letra y
echo -e "\nMostrando todas as linhas cuja segunda letra é a letra y...\n"
linhas_y=`grep ^.[y] $1`
echo -e "$linhas_y\n"

# obtém todas as linhas cujo tamanho é 30
echo -e "\nMostrando todas as linhas que possuem o tamanho 27...\n"
linhas_tam=`grep '^.\{27\}$' $1`
echo -e "$linhas_tam\n"