#!/bin/bash

#C.5) Crear un programa que permita recibir el nombre completo de un mes del año (M) en
#inglés y muestre por pantalla el mensaje “El mes M tiene X días”. Emplear case para su
#resolución.
#Nota: ignorar el caso de año bisiesto.

mes=$(echo $1 | tr [:lower:] [:upper:])
#ver manual comando tr para saber que hace cuando se la asigno a la variable mes

case $mes in
	JANUARY | MARCH | MAY | JULY | AUGUST | OCTOBER | DECEMBER)
		echo "$mes tiene 31 dias.";;
	APRIL | JUNE | SEPTEMBER | NOVEMBER)
		echo "$mes tiene 30 dias.";;
	FEBRUARY)
		echo "$mes tiene 28/29 dias.";;
	*)
	echo "Mes desconocido. $month" && exit 1;;
esac

