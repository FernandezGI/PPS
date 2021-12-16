#!/bin/bash

# Busca un Usuario por el UserName (campo nº 5) en el Fichero de usuarios.csv
function Existe {
	cat usuarios.csv | cut -d":" -f5 | grep $Username
}

# Usamos una función para almacenar el Menú, el cuál se mostrará cuándo un usuario correcto se Loguee en el Sistema.
function Menu {
	while true; do

		echo "**************************************"
		echo "      - Funciones de Usuario -   "
		echo "______________________________________"
		echo ""
		echo "Pulsa un Nº del 1 al 6 para realizar una operación..."
		echo ""
		echo "   -  1: EJECUTAR COPIA DE SEGURIDAD"
		echo "   -  2: DAR DE ALTA USUARIO"
		echo "   -  3: DAR DE BAJA AL USUARIO"
		echo "   -  4: MOSTRAR USUARIOS"
		echo "   -  5: MOSTRAR LOG DEL SISTEMA"
		echo "   -  6: SALIR"
		echo ""


# Realizamos el Case para seleccionar una Función.
		echo -e "\nSeleccione una opción del 1 al 6: \n"
		read -n 1 -s Opcion
		case $Opcion in
			[1]* ) F1;;
			[2]* ) F2;;
			[3]* ) F3;;
			[4]* ) F4;;
			[5]* ) F5;;
			[6]* ) F6;;
				* ) echo -e "\n  Opción incorrecta... \n  Debes elegir una Opción del 1 al 6... \n";;
		esac

# Tras finalizar, nos preguntará si deseamos continuar...
		while true; do
			echo -e "\n¿Desea Continuar? [S/N]"
			read -n 1 -s Continue
			case $Continue in
				[Ss]* ) echo -e "\n ____Continuando la Ejecución____ \n"; break;;
				[Nn]* ) echo -e "\n ____________Finalizando la Ejecución____________ \n"; exit;;
				* ) echo -e "\n    Seleccione Si o No. ( "'"S"'" ó "'"N"'" )";;
			esac
		done
	done
}

DateHour=`date +"%d%m%Y a las %H:%Mh"`

# Se realiza una copia y empaquetado del archivo usuarios.csv, con el formato de Nombre y Fecha indicado y la Extensión .ZIP
function F1 {
	echo -e "\n - Has elegido Ejecutar Copia de Seguridad \n"
	Fecha=`date +%d%m%Y_%H-%M-%S`
	tar -cvf copia_usuarios_$Fecha.zip usuarios.csv
	echo -e "\n  - Copia de seguridad Creada \n" | echo "BACKUP -> el $DateHour" >>log.log
}

# Cada información introducida en las Variables establecidas en Alta de Usuarios,
# lo que hará será Seleccionar un número de caracteres en cada campo, y los transformará
# a minúsculas para Generar el UserName, el cual se recogerá en 4 variables distintas
# y se usará en el último campo del Alta al usuario en el Fichero usuarios.csv
function Generauser {
		Ncut=`echo $Nombre | cut -c1`
		A1cut=`echo $Apell1 | cut -c1,2,3`
		A2cut=`echo $Apell2 | cut -c1,2,3`
		Dcut=`echo $Dni | cut -c1,2,3`
	echo "$Ncut$A1cut$A2cut$Dcut" | tr A-Z a-z # Se muestra el Nombre de Usuario y se transforma letras a minúsculas.
}

# Pide por teclado Nombre, Apellidos, DNI.
# Creo la Variable Username con el valor de la Función Generauser, para añadirlo al final de AltaUsuario.
# También creamos la Variable Comprobador para llamar a la función Existe y verificar si el
# usuario ya existe en el sistema.
function F2 {
	echo -e "\n - Has elegido Dar de Alta a un Usuario \n"
		read -p " - Nombre: " Nombre
		read -p " - Primer Apellido: " Apell1
		read -p " - Segundo Apellido: " Apell2
		read -p " - DNI: " Dni
		Username=`Generauser`
		Comprobador=`Existe`
		AltaUsuario=`echo "$Nombre:$Apell1:$Apell2:$Dni:$Username"`

		if [ "$Comprobador" == "$Username" ] # Si el Nombre de Usuario introducido es igual al ya existente.
			then
				echo "El Usuario $Username existe" # No se crea.
			else
				echo "El Usuario $Username no existe" # Se crea y se agrega al archivo, con el formato establecido.
				echo "$AltaUsuario" >> usuarios.csv | echo "INSERTADO $AltaUsuario el $DateHour" >>log.log # Añade la línea al Log.
				echo -e "\n - ¡Se ha añadido el Usuario Correctamente! \n    - Nombre de Usuario: $Username \n"
		fi
}


function F3 {
	echo -e "\n - Has elegido Dar de Baja a un Usuario \n"
		read -p " - Nombre de Usuario: " Username
		Comprobador=`Existe`

		if [ "$Comprobador" == "$Username" ] # Si el Nombre de Usuario introducido es igual al ya existente...
				then
					echo "El Usuario $Username existe" # Ya existe, por lo que procederá a borrarlo del archivo.
					sed -i "/\b\($Username\)\b/d" usuarios.csv # Borrará la línea.
					echo "BORRADO $Username el $DateHour" >>log.log # Añade la línea al Log.
					echo -e "\n - ¡Se ha borrado el Usuario Correctamente! \n    - Nombre de Usuario: $Username \n"
				else
					echo "El Usuario $Username no existe" # Si no existe, no se podrá borrar nada.
		fi
}

# Muestra el archivo dónde se encuentra la Lista de Usuarios Registrados, y la Ordena alfabéticamente por el campo de Username.
function F4 {
	echo -e "\n - Has elegido Mostrar Usuarios \n"
	cat usuarios.csv | sort -k 5
}

# Muestra el archivo dónde se encuentran los registros Log de los sucesos.
function F5 {
	echo -e "\n - Has elegido Mostrar el Log del Sistema \n"
	cat log.log
}

# Sales del Script.
function F6 {
	echo -e "\n - Has elegido Salir... \n"
	exit
}

while true; do # Pedirá que introduzcamos el Nombre de Usuario hasta que digamos que No.

	# INICIO DE SESIÓN (Se introducirá el Username y comprobará si Existe en el sistema)
	echo -e "\n_____________________________"
	echo    "      INICIO DE SESIÓN   "
	echo -e "_____________________________\n"
	read -p " - Introduce tu Nombre de Usuario: " Username
	Comprobador=`Existe`

	if [ "$Username" == "admin" ] # Si el Nombre de Usuario introducido es igual a admin...
		then
			echo -e "\n------------- $DateHour -------------" >>log.log
			Menu # Entonces, muestra el Menú.
		else
			echo "" # No existe, por lo que pasará a ejecutarse el siguiente if.
	fi

	if [ "$Username" == "$Comprobador" ] # Si el Nombre de Usuario introducido es igual al ya existente...
		then
			echo -e "\n------------- $DateHour -------------" >>log.log # Introduce una Línea con la Fecha y Hora en el Fichero log.log
			Menu # Entonces, muestra el Menú.
		else
			echo -e "Error al Iniciar Sesión. El Usuario '""$Username""' no existe....\n" # No existe. Dará mensaje de error y acabará el Script.
			while true; do # Preguntará si queremos continuar probando otro nombre de usuario.
				echo -e "\n¿Desea Continuar? [S/N]"
				read -n 1 -s Continue
				case $Continue in
					[Ss]* ) echo -e " ____Continuando la Ejecución____ \n"; break;;
					[Nn]* ) echo -e " ____________Finalizando la Ejecución____________ \n"; exit;;
					* ) echo -e "\n    Seleccione Si o No. ( "'"S"'" ó "'"N"'" )";;
				esac
			done
	fi
done

# LINK en GITHUB -> https://github.com/FernandezGI/PPS/tree/main/PPS-T1A3
# Alumno: Ismael Fernández - CiberSeguridad 2021