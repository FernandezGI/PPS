#!/bin/bash

#Pide por teclado el Año de Nacimiento...
echo"";read -p "Inserta tu año de Nacimiento: " Birthday

# Ahora realizamos la Operación... Dividimos el Año entre 12. Pero ésto no es necesario,
# sólo necesitamos el Resto.
#DivBirthday=`expr $Birthday / 12`
#echo "Has nacido en $Birthday y el resultado de la división entre 12 es $DivBirthday"

# Para obtener el Resto usamos el comando let. Creamos la variable Resto con el contenido
# del resultado de la operación.
let Resto=$Birthday%12
#echo "El Resto es: $Resto"

echo -e "\n  Tu año de Nacimiento corresponde con el siguiente Animal del Horóscopo Chino:"

# El Resultado que tenga el Resto, será el echo que imprimirá en pantalla...
	case "$Resto" in
		"1") echo -e "  - El Gallo \n";;
		"2") echo -e "  - El Perro \n";;
		"3") echo -e "  - El Cerdo \n";;
		"4") echo -e "  - La Rata \n";;
		"5") echo -e "  - El Buey \n";;
		"6") echo -e "  - El Tigre \n";;
		"7") echo -e "  - El Conejo \n";;
		"8") echo -e "  - El Dragón \n";;
		"9") echo -e "  - La Serpiente \n";;
		"10") echo -e "  - El Caballo \n";;
		"11") echo -e "  - La Cabra \n";;
		"0") echo -e "  - El Mono \n";;
	esac

# Alumno: Ismael Fernández - CiberSeguridad 2021
