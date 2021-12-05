#!/bin/bash

echo "-------------------------------------------"
echo "Introduce un rango de números para sumarlos."
echo "El segundo número debe ser mayor al primero."
echo "___________________________________________"

#Pide por teclado que se introduzcan los dos números...
read -p "Inserta el primer número: " n1
read -p "Inserta el segundo número: " n2
echo ""

# Se comprueba que el segundo número sea mayor al primero. n2>n1
if [ $n2 -gt $n1 ]
	then
	# Si se cumple, se hará un Bucle For. Se sumará cada número que esté en el rango, hasta llegar al n2.
		echo "Suma: "
		for i in `seq $n1 $n2`
			do
				Suma=`expr $Suma + $i`
				echo "+ $i"
			done

		echo "Resultad = $Suma"
		echo ""

	else
		echo "El segundo número debe sero mayor al primero..."
		exit
fi

# Alumno: Ismael Fernández - CiberSeguridad 2021

