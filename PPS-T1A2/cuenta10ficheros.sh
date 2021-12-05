#!/bin/bash

# Lo primero es ver si le hemos pasado un parámetro o no
if [ $# -eq 1 ]
then
	echo -e "\n[Parámetro correcto]"

	# Ahora comprobará si es/existe el Direcotrio. De lo contrario saldrá mensaje de advertencia.
	if [ -d $1 ]
	then
		echo "[Directorio correcto]"
		Cont=0

		# Listamos los archivos encontrados, para completar un poco el Script.
		echo -e "\n Lista de ficheros encontrados:\n"
		# Hacemos un Bucle For. Listamos todos los archivos que vaya encontrando en el directorio,
		# con ls y un contador que se irá incrementando para recorrer cada línea...
		for i in `ls $1`
		do
			if [ -f $1/$i ]
			then
				echo " - $i"
				((Cont++))
			fi
		done

		# Finalizado el Bucle, si es Mayor de 10, mostrará el primer mensaje. Si no, el segundo.
		if [ $Cont -gt 10 ]
		then
			echo"";echo "Hay más de 10 ficheros."
		else
			echo"";echo "Hay menos de 10 ficheros."
		fi
		echo -e "\n( En el Directorio $1 hay $Cont Ficheros )\n"
	else
		echo -e "El parámetro no es un directorio. Saliendo del Script...\n"
	fi
else
	echo "Falta el parámetro. Saliendo del Script...";echo""
fi

# Alumno: Ismael Fernández - CiberSeguridad 2021
