#!/bin/bash
#
# sexto.sh - Nosso Sexto Programa em Shell - Laços de Repetição
# Homepage: http://utah.com.br
# Autor: Adilson Fausto Silva
# Mantenedor: Grupo Utah
# ----------------------------------------------
#
# Este programa irá verificar o valor da variável NUMERO, enquanto o valor da variável for menor que 10, ele
# mostrará a mensagem na tela que o valor é menor que 10 e mostrará o valor da variável; quanto o valor atingir
# 10, o programa será finalizado
#
# Exemplo de execução:
#
# $ ./sexto.sh
# O valor da variável é 0, que é menor que 10
# O valor da variável é 1, que é menor que 10
#
# Programa iniciado com Sucesso.
#
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GLP

NUMERO="10"
N="0"

while [ "$N" -lt "$NUMERO" ]; do
	echo
	echo "O valor da variável é $N, que é menor que $NUMERO."
	echo
	let N=$N+1
done
exit 0
