#!/bin/bash

echo " - - - - - - - - - - - - - - - -"
echo "   - C A L C U L A D O R A -   "
echo "________________________________"
echo ""
echo "Introduce un Nº del 1 al 5 para realizar una operación..."
echo ""
echo "   -  1: Sumar"
echo "   -  2: Restar"
echo "   -  3: Dividir"
echo "   -  4: Multiplicar"
echo "   -  5: Salir"
echo ""

# Primero se muestra el Menú, y luego lee el caracter que ingresemos.
read -n 1 -s Opcion

if [ "$Opcion" == "1" ] # Si el caracter introducido es Igual a 1, hará una Suma.
	then
	echo -e "Has elegido sumar\n"
		read -p " - Primer número: " n1
		read -p " - Segundo número: " n2
	Resultado=`expr $n1 + $n2`
	echo -e "\nEl resultado de $n1 + $n2 = $Resultado \n"

elif [ "$Opcion" == "2" ] # Si es Igual a 2, hará una Resta.
        then
	echo -e "Has elegido restar\n"
                read -p " - Primer número: " n1
                read -p " - Segundo número: " n2
        Resultado=`expr $n1 - $n2`
        echo -e "\nEl resultado de $n1 - $n2 = $Resultado \n"

elif [ "$Opcion" == "3" ] # Si es Igual a 3, hará una División.
        then
	echo -e "Has elegido dividir\n"
                read -p " - Primer número: " n1
                read -p " - Segundo número: " n2
        Resultado=`expr $n1 / $n2`
        echo -e "\nEl resultado de $n1 / $n2 = $Resultado \n"

elif [ "$Opcion" == "4" ] # Si es Igual a 4, hará una Multiplicación.
        then
	echo -e "Has elegido multiplicar\n"
                read -p " - Primer número: " n1
                read -p " - Segundo número: " n2
        Resultado=`expr $n1 \* $n2`
        echo -e "\nEl resultado de $n1 x $n2 = $Resultado \n"

elif [ "$Opcion" == "5" ] # Si la opción es igual a 5, saldremos del Script.
        then
		echo -e "Saliendo de la Calculadora \n"
		exit

else # Si el caracter introducido es cualquier cosa que no sea del 1 al 5, nos advertirá y saldrá del Script.
	echo -e "\nDebes introducir un número del 1 al 5"
	echo -e "Saliendo de la Calculadora...\n"
fi

# Alumno: Ismael Fernández - CiberSeguridad 2021
