#!/bin/bash
#
# oitavo.sh - Nosso Oitavo Programa em Shell - Laços for
# Homepage: http://utah.com.br
# Autor: Adilson Fausto Silva
# Mantenedor: Grupo Utah
# ----------------------------------------------
#
# Este programa irá mostrar uma mensagem na tela para arquivo .conf encontrado no diretório /etc
#
# Exemplo de execução:
#
# $ ./oitavo.sh
# O arquivo /etc/xyz.conf foi encontrado no diretório /etc
#
# Programa iniciado com Sucesso.
#
# Histórico de Versões
#
O Versão 1.0
#
# COPYRIGHT: Este programa é GLP

ARQUIVOS="/etc/*.conf"

echo
echo "Bem vindo ao programa de listagem de .conf"
echo

for i in $(ls $ARQUIVOS); do
	echo "O arquivo $i foi encontrado no diretório /etc/"
done

exit 0
