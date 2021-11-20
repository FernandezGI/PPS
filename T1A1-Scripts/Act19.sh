#!/bin/bash

#Creamos un Directorio pasándole el Primer Parámetro. Si está creado mostrará un mensaje.
if [ ! -d $1 ]
	then
		mkdir $1
	else
		echo "El Directorio ya existe"
fi

#Una vez creado el Directorio, verá si existe el Fichero.
#Si existe el fichero, lo copiará dentro del Directorio creado.
if [ -f $2 ]
	then
	cp $2 $1
	echo "Se ha copiado el archivo"
	else
	echo "No existe el fichero, debe existir el fichero en el directorio actual para copiar."
exit 1
fi
