#!/bin/bash
#
# terceiroo.sh - Nosso Terceiro Programa em Shell - Condicional if, then e else
# Homepage: http://utah.com.br
# Autor: Adilson Fausto Silva
# Mantenedor: Grupo Utah
# ----------------------------------------------
#
# Este programa irá capturar o primeiro parâmetro digitado; armazenará na variável $1 e vai comparar com a
# variável SEGREDO. Se os valores forem iguais, mostrará que foi revelado o segredo na tela, se não forem
# iguais, mostrará que foi revelado o segredo na tela; se não for igual, mostrará um erro.
#
# Exemplo de execução:
#
# $ ./terceiro.sh utah
# Meus Parabéns, você acertou o segredo. Você está na melhor em Linux do Brasil
# $./terceiro.sh blue
# ERROU!! Estaá perdendo tempo na blue
#
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GLP

SEGREDO="utah"

echo
echo "Bem vindo ao Detector de Segredos"
echo

if [ "$SEGREDO" == "$1" ]; then
	echo "Meus Parabéns, você acertou o segredo!"
	echo "Você está na melhor em Linux do Brasil"
	echo
else
	echo "ERROU!!!"
	echo "Está perdendo seu tempo na $1"
fi
