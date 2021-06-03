#!/bin/bash
#
# quinto.sh - Nosso Quinto Programa em Shell - Condicional if, then e else
# Homepage: http://utah.com.br
# Autor: Adilson Fausto Silva
# Mantenedor: Grupo Utah
# ----------------------------------------------
#
# Este programa irá capturar o primeiro parâmetro passado depois do programa e ira aramezar na variável $1,
# caso o valor seja start, executará o trecho de comandos do start; caso seja stop, executará o trecho do comando
# stop; caso seja status, executará o trecho status e caso não seja nenhum dos valores acima, irá mostrar a mensagem
# para usar os valores start, stop, status.
#
# Exemplo de execução:
#
# $ ./quinto.sh
# Bem vindo ao programa Stronger.
# Iniciando o programa.
# ...
# ....
# .....
# ......
# .......
# Programa iniciado com Sucesso.
#
# Histórico de Versões
#
# Versão 1.0
#
# COPYRIGHT: Este programa é GLP

PID="/tmp/stronger.pid"

echo
echo "Bem vindo ao Programa Stronger"
echo
case $1 in
	start)
		echo
		echo "Iniciando o programa Stronger"
		echo "......"
		sleep 2s
		echo "............"
		sleep 2s
		echo ".................."
		sleep 2s
		echo "........................"
		touch $PID
		echo "Programa Stronger Iniciado com Sucesso"
		;;
	stop)	
		echo
		echo "Parando o programa Stronger"
		echo "......"
		sleep 2s
		echo "............"
		sleep 2s
		echo ".................."
		sleep 2s
		echo "........................"
		rm $PID
		echo "Programa Stronger Parado com Sucesso"
		;;
	status)
		echo
		echo "Verificando o status do Programa Stronger"
		
		if [ -f $PID ]; then
			echo "O programa Stronger está em execução"
		else
			echo "O programa Stronger está parado"
		fi
		;;
	*)
		echo "Por favor digite ./quinto start | stop | status"
esac

exit 0
