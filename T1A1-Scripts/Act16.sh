#!/bin/bash

#Debemos pasar al menos 2 Parámetros, de lo contrario, saldrá el mensaje de Error...
#Para ello le ponemos la condición de tener que pasar el Parámetro número 2.

if [ $2 ]
	then
		echo "$1 $2 $3 $4 $5 $6 $7 $8 $9"
exit
	else
		echo "Error: Debes pasar al menos dos parámetros"
fi
