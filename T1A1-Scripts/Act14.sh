#!/bin/bash

#Se debe introducir al menos 1 Parámetro.
#Si no se introduce, termina el Script.

#Si se introduce, cuenta el Número de Parámetros enviados y los muestra.

#Si no se introduce, Muestra el Exit Code:1
#Si se introduce, Muestra el Exit Code:0

if [ ! $1 ]
	then
		echo "No se introdujo el parámetro"
exit 1
	else
		echo "$# Parámetros enviados."
		echo "Parámetros introducidos: $*"
exit 0
fi
