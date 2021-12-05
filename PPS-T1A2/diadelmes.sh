#!/bin/bash

# Sacamos el número del Mes y lo metemos en la Variable mesactual:
mesactual=`date +"%m"`

# Saca el nombre del Mes Actual:
mes=`date +"%B"`
echo -e "\n  Estamos en $mes..."

# Y ahora usamos la función case, usando el contenido de la variable mesactual:
	case "$mesactual" in
		01|03|05|07|08|10|12) echo -e "\n  - El Mes tiene 31 días \n";;
		02) echo -e "\n  - El Mes tiene 28 días, aunque también podría tener 29 :) \n";;
		04|06|09|11) echo -e "\n  - El Mes tiene 30 días \n";;
	esac

# Si el mes es el Enero, Marzo, Mayo, ect, mostrará el primer echo.
# Si el mes es Febrero, mostrará el contenido del segundo echo...

# --Alumno: Ismael Fernández - Ciberseguridad 2021--
