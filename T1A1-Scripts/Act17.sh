#!/bin/bash

#Le pasamoe un Fichero cómo parámetro. El Cript dirá si existe o no.
if [ -f $1 ]
	then
		echo "Sí, sí existe el fichero."
	else
		echo "No, no existe."
fi
