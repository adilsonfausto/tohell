#!/bin/bash
#
# quarto.sh - Nosso Quarto Programa em Shell - Condicional if, then e else
# Homepage: http://utah.com.br
# Autor: Adilson Fausto Silva
# Mantenedor: Grupo Utah
# ----------------------------------------------
#
# Este programa irá capturar o valor digitado pelo usuário e armazenará na variáel DIGITADO e comparará com o valor
# da variável SEGREDO.
#
# Exemplo de execução:
#
# $ ./quarto.sh
# Digite o Segredo:
# utah
# Meus Parabéns, você acertou o segredo. Você está na melhor em Linux do Brasil.
# $./quarto.sh
# Digite o Segredo:
# blue
# ERROU!! Está perdendo tempo na blue
#
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GLP

SEGREDO="utah | Utah"

echo
echo "Bem vindo ao Detector de Segredos"
echo
echo "Por favor, digite o segredo: "
# read irá ler o que foi digitado e armazenará na variável DIGITADO
read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo "Meus Parabéns, você acertou o segredo!"
	echo "Você está na melhor em Linux do Brasil"
	echo
else
	echo "ERROU!!!"
	echo "Está perdendo seu tempo na $DIGITADO"
fi
