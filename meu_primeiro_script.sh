#!/bin/bash
#
# Cria mais de 30 pastas e move os scripts do curso de shell 
# script para dentro das pastas criadas
#
# Autor: Rafael Dias 
# Data de criação: 23/01/2018

for (( i = 2; i < 37; i++ )); do
	#statements
	echo "Criando pasta com o nome de aula"$i"..."
	mkdir aula$i
	echo "Movendo arquivo script.sh ("$i") para a pasta aula"$i"..."
	mv "script.sh ("$i")" "aula"$i
done
