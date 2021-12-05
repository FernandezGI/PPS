#!/bin/bash

echo -e "\n  A continuación, deberá insertar la Altura en cm de tres personas... \n"

# Pide por teclado los cm (numérico) de 3 Personas...
read -p "Inserte en cm la Altura de la Persona 1: " cmper1

read -p "Inserte en cm la Altura de la Persona 2: " cmper2

read -p "Inserte en cm la Altura de la Persona 3: " cmper3

# Ahora hacemos las comparaciones.

# Comparamos los dos primeros números, si el primero es más grande que el segundo, realizará
# la comprobación con el tercero, y si el primero es mayor que el tercero, imprimirá por pantalla
# el echo del primer if.

	if [ $cmper1 -gt $cmper2 ] && [ $cmper1 -gt $cmper3 ]
		then
		Metros=$(echo "scale=2; $cmper1/100" | bc)
		echo -e "\n  La más alta es la Persona 1, con: $Metros m. \n"
	fi

# Si el primer número no es mayor a los otros dos, se ejecutará el siguiente if.

	if [ $cmper2 -gt $cmper1 ] && [ $cmper2 -gt $cmper3 ]
		then
		Metros=$(echo "scale=2; $cmper2/100" | bc)
		echo -e "\n  La más alta es la Persona 2, con: $Metros m. \n"
	fi

	if [ $cmper3 -gt $cmper1 ] && [ $cmper3 -gt $cmper2 ]
		then
		Metros=$(echo "scale=2; $cmper3/100" | bc)
		echo -e "\n  La más alta es la Persona 3, con: $Metros m. \n"
	fi

# Alumno: Ismael Fernández - CiberSeguridad 2021
