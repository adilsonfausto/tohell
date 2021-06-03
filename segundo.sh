#!/bin/bash
#
# segundo.sh - Nosso Segundo Programa em Shell - Variáveis de Controle Internas do Shell
# Homepage: http://utah.com.br
# Autor: Adilson Fausto Silva
# Mantenedor: Grupo Utah
# ----------------------------------------------
#
# Este programa mostrará as principais variáveis de controles internas do shell, que poderão ser
# usadas por outros programas a fim de obtermos algumas informações.
#
# Exemplo de execução:
#
# $ ./segundo.sh linux
# O Valor da Variável $1 é linux
# $./segundo.sh linux windows
# O Valor da Variável $1 é linux
# O Valor da Variável $2 é windows
#
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GLP

echo "Bem Vindo as Variáveis de Controle Internas do Shell"
echo
echo "A variável \$1 armazena o primeiro parâmetro passado depois do script que foi: $1"
echo
echo "A variável \$2 armazena o segundo parâmetro passado depois do script que foi: $2"
echo
echo "A variável \$3 armazena o terceiro parâmetro passado depois do script que foi: $3"
echo
echo "A variável \$0 armazena o comando que foi executado | nome do programa, que foi: $0"
echo
echo "A variável \$# armazena o número de Parâmetros que foram passados, que foi: $#"
echo
echo "A variável \$\$ ou \$@ armazena o número do PID do processo gerado na execução do programa, que foi: $$"
echo
echo "A variável \$? armazena o valor de retorno do último comando|programa executado, que foi: $?"
