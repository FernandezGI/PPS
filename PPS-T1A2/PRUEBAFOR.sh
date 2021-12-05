#!/bin/bash
cont=0
for i in `ls $1`
do
	if [ -e $i ]
	then
		echo $i
		((cont++))
	fi
done
echo "En este directorio hay $cont ficheros"
