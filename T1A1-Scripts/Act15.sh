#!/bin/bash
IFS=-

#Contar y Listar Parámetros con delimitador - en IFS
#Si no recibe ningún parámetro, saldrá mensaje y acabará el Script
if [ ! $1 ]
	then
		echo "No se introdujo el parámetro"
exit
	else
		echo "$# Parámetros introducidos: $*"
fi
