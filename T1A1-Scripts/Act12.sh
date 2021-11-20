#!/bin/bash

#Si el Directorio no está creado, lo crea.
if [ ! -d $1 ]
	then
	mkdir $1
fi

#Si el Fichero existe, lo copia dentro del Directorio que hemos indicado en el parámetro.
#Si no existe, muestra mensaje...
if [ -f $2 ]
	then
	cp $2 $1
	else
	echo "No existe el fichero, debe existir el fichero en el directorio actual para copiar."
exit 1
fi
