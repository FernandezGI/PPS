#!/bin/bash

#Se debe introducir al menos 1 Parámetro.
#Si no se introduce, termina el Script.

#Si se introduce, cuenta el Número de Parámetros enviados y los muestra.
if [ ! $1 ]
	then
		echo "No se introdujo el parámetro"
exit
	else
		echo "$# Parámetros enviados."
		echo "Parámetros introducidos: $*"
fi
