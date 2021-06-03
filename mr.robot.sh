#!/bin/bash
#
# mr.robot.sh - Nosso Décimo Programa em Shell - Mr. Robot
# Homepage: http://utah.com.br
# Autor: Adilson Fausto Silva
# Mantenedor: Grupo Utah
# ----------------------------------------------
#
# Este programa é um robô interativo, estilo Alexia, chamado Mr. Robot criado para invadir determinadas URL's,
# buscar vulnerabilidades e também verificar conectividades.
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
# O Versão 1.0
#
# COPYRIGHT: Este programa é GLP

source /root/doshelltohell/instructions.txt

echo -e "\e[31m\e[1m\e[5mOlá, eu sou o Mr Robot. Fui criado para atacar. Não sou seu amigo, mas diga:\nO que você quer que eu faça?\e[m\e[m\e[m"

sleep 2s

while true; do
	echo -e "\n"
	read -p "Diga Agora!" ACTION
	echo -e "\n"
	case $ACTION in
		*"ping"*|*"pingar"*|*"conectividade"*)
			DADO="$(( $RANDOM % 10 ))"
			ping -c 4 -4 "${sites[$DADO]}"
		;;

		*"nmap"*|*"mapear"*|*"portas abertas"*)
			DADO="$(( $RANDOM % 10 ))"
			nmap -sS "${sites[$DADO]}"
		;;

		*"conect"*|*"acesse"*|*"ssh"*)
			DADO="$(( $RANDOM % 4))"
			ssh -l root "${openssh[$DADO]}"
	
	esac

done

