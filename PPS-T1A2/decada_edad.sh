#!/bin/bash

# Pide por teclado la Edad de una Persona...
read -p "Inserte tu Edad: " edad

if [ 91 -gt $edad ] # Ésto nos permite poder introducir un número del 1 al 90.
	then
	# Sacamos el Año Actual en dígitos. También lo mostramos, para verificar el año.
	anoactual=`date +"%Y"`
	echo -e "\n - Estamos en el año $anoactual"

	# Ahora calculamos el Año de Nacimiento. Al Año actual le restamos nuestra Edad...
	Birthday=`expr $anoactual - $edad`
	echo -e " - Has nacido en $Birthday \n"

	# Con la función cut, seleccionamos el tercer dígito del año. Con él sacaremos la década.
	Decada=$( echo "$Birthday" |cut -c 3 )

		case "$Decada" in
			"1") echo -e "Has nacido en la Década del 2010 \n";;
			"2") echo -e "Has nacido en la Década del 2020 \n";;
		        "3") echo -e "Has nacido en la Década del 1930 \n";;
		        "4") echo -e "Has nacido en la Década del 1940 \n";;
		        "5") echo -e "Has nacido en la Década del 1950 \n";;
		        "6") echo -e "Has nacido en la Década del 1960 \n";;
		        "7") echo -e "Has nacido en la Década del 1970 \n";;
		        "8") echo -e "Has nacido en la Década del 1980 \n";;
		        "9") echo -e "Has nacido en la Década del 1990 \n";;
		        "0") echo -e "Has nacido en la Década del 2000 \n";;
		esac
	else
		echo -e "\n Debe introducir una edad entre 1 y 90 \n"
	exit
fi

# Alumno: Ismael Fernández - CiberSeguridad 2021
