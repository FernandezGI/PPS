#!bin/bash
if [ ! -d $1 ]
	then
	mkdir ./$1
fi

if [ -f $2 ]
	then
	cp $2 $1
	else
	echo "No existe el fichero, debe existir el fichero en el directorio actual para copiar."
exit 1
fi


