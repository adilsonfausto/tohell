#!/bin/bash

# script1.sh - Emulação do Comando seq em Bash
#
# O comando seq receb dois números e mostra na saída padrão todos os números existentes entre eles, em uma sequência
# pronta para ser usada pelo comando for. Caso omitido o número inicial, é utilizado 1.
#

O=+ # declara o valor da variável 0 sendo + (soma0
A=1 # declara o valor da variável A igual a 1
Z=${1:-1} # caso o parâmetro não seja declarado a variável Z tera o mesmo valor do parametro A

[ "$2" ] && { # se o segundo parametro for informado $2 a variavel A recebera o primeiro parametro $1 e a variavel
	A=$1  # Z o segundo paramero @3
	Z=$2
}

[ $A -gt $Z ] && O=-

while [ $A -ne $Z ]; do
       	echo $A
	eval "A=\$((A$O 1))"
done

echo $A
