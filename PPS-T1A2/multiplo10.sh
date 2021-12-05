#!/bin/bash

# Se pedirá que se introduzca un número por Teclado.
read -p "Inserte un número: " NUM

# Usaremos la función % para sacar el Resto de la división... Si da 0, imprimirá la primera opción.
if (( $NUM % 10 == 0 ))
	then
		echo -e "\n El número $NUM es múltiplo de 10. \n "
	else
		echo -e "\n El número $NUM no es múltiplo de 10... :( \n "
fi

# Alumno: Ismael Fernández - CiberSeguridad 2021
