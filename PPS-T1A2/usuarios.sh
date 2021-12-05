#!/bin/bash

# Comprobamos si el Usuario existe en el Sistema. Guardamos los errores, pero elimino la salida en Pantalla.
if id -u "$1" 2>>LogErroresUsuarios.txt >/dev/null
	then

# Recogemos los campos del Usuario en Variables.
UserName=`cat /etc/passwd | grep "$1" | cut -d":" -f1`
Uid=`cat /etc/passwd | grep "$1" | cut -d":" -f3`
Gid=`cat /etc/passwd | grep "$1" | cut -d":" -f4`
Dir=`cat /etc/passwd | grep "$1" | cut -d":" -f6`

# Si es un Usuario Existente, mostrará los campos especificados...
echo -e "\n____________________________________"

echo -e "\n Usuario encontrado: $UserName \n"

echo "   - Nombre de Usuario: $UserName"
echo "   - UID: $Uid"
echo "   - GID: $Gid"
echo "   - Directorio de trabajo: $Dir"

echo -e "____________________________________\n"

	#Si no es un usuario existente, mostrará el error y acabará el Script.
	else
		echo -e "\n "'"'$1'"'" No es un Usuario existente en el Sistema... \n"

#	read -p "¿Quieres Continuar buscando un Usuario? [Y/N]" Continue
#	while [ $Continue == "Y" ]
#		do
#		read -p " - Introduce el nombre de un usuario: " NewUser
#		sh ./usuarios.sh $NewUser
#		exit
#		done

		echo -e "Saliendo del Sript... \n"
		exit
fi

# Alumno: Ismael Fernández - CiberSeguridad 2021
