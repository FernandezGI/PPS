#!/bin/bash

#Le pasamos cómo Primer Parámetro un Directorio o un Archivo.
#Si es un Directorio, mostrará el Nombre del Directorio y dirá que lo es.
#Si no, pasará a la siguiente opción y verá si es un Fichero.

#Si no es ninguna de las dos, mostrará un mensaje de Error...
for x in $1
	do
	if [ -d $x ]
		then
			echo "$x es un directorio"
	elif [ -f $x ]
       	        then
                        echo "$x es un fichero"
		else
			echo "Error: $x no es un fichero ni directorio"
	fi
 done
