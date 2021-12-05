#!/bin/bash

# Lo primero es ver si le hemos pasado un parámetro o no.
if [ $# -eq 1 ]
	then

	# Ahora recogemos en Variables el Directorio, el Formato de Fecha y el Nombre Final del Archivo.
	Dir=$1
	Fecha=`date +%d%m%Y` # Sacamos día, mes y año en formato: ddmmyyyy
	FileName="copia_scripts_$Fecha.tar"  # Será el Nombre final del fichero de la Copia realizada.

	echo -e "\nSe realizará una Copia del contenido del Directorio $Dir\n - Con el nombre: $FileName"

	# Creamos Variable Copia para recoger el Comando TAR que ejecutará el archivado.
	Copia=`tar -cvf $FileName $Dir 2>/dev/null` # Si queremos comprimir, debemos usar tar -z.


	echo -e "\n____________________________________"

	echo -e "\n Ejecutando la Copia . . . \n"

	echo "$Copia" # Se ejecutará la copia, y se mostrará en pantalla el listado de ficheros archivados.

	echo -e "____________________________________\n"

	else # Si no se introduce un parámetro al ejecutar el Script:
	echo -e "\n No se ha introducido el parámetro...\n (Debes introducir un Directorio)\n"
fi

# Alumno: Ismael Fernández - CiberSeguridad 2021
