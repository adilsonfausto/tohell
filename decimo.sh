#!/bin/bash
#
# decimo.sh - Nosso Décimo Programa em Shell - Script de backup completo
# Homepage: http://utah.com.br
# Autor: Adilson Fausto Silva
# Mantenedor: Grupo Utah
# ----------------------------------------------
#
# Este programa será usadopara realizar um backup full de arquivos localizados em um servidor onde teremos que
# copiar a pasta /srv/samba.
#
# Exemplo de execução:
#
# $ ./decimo.sh
#
# Programa iniciado com Sucesso.
#
# Histórico de Versões
#
# O Versão 1.0
#
# COPYRIGHT: Este programa é GLP

# BKPDIR - Local onde será armazenado os arquivos de backup.
BKPDIR="/srv/backup/"
# FILEDIR - Local onde estão os arquivos de origem que faremos backup.
FILESDIR="/srv/samba/"
LOGFILE="/var/log/backup.log"
ERRORLOG="/var/log/backup_error.log"
FILENAME="/srv/backuptar_$DATE.tar.gz"
DATE=`date +%d_%m_%Y` #ou $(date +%d_%m_%Y)
COMPACT="tar -cvzf $FILENAME $BKPDIR"
ADMIN="services@utah.com.br"
SENDUSER="root@utah.com.br"

echo -e "\n"
echo -e "Iniciando o Script de Backup"
echo -e "\n"

verificar() {
	if [ $? -eq 0  ]; then
		echo "Comando Ok"
	else
		echo "ERRO"
	fi
}

mail() {
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de Backup" -a $LOGFILE -m "Taí"
}

mail_err() {
	sendmail -f $SENDUSER -f $ADMIN -u "Mensgem de erro do Backup" -a $LOGFILE -m "Erro!"
}


rsync -avu $FILESDIR $BKPDIR > $LOGFILE 2> $ERRORLOG
verificar

[ -f "$COMPACT" ] || $COMPACT
verificar

exit  0
