#!/bin/bash

# Recuperation des variables
mailbox=$1
mysqlroot='mysql1234'

# Protection des arguments
if [ "$#" -ne 1 ];then
	echo -e "\e[101m La commande est incomplète ! \e[49m \n"
else

	# Activation de la boite mail
	mysql -uroot -p$mysqlroot -e "UPDATE postfix.addresses SET active = '1' WHERE email = '$mailbox';"

fi
