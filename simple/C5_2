#!/bin/bash

#C.5) Crear un programa que permita recibir el nombre completo de un mes del año (M) en
#inglés y muestre por pantalla el mensaje “El mes M tiene X días”. Emplear case para su
#resolución.
#Nota: ignorar el caso de año bisiesto.

mes=$(echo $1 | tr [:lower:] [:upper:])


case $mes in
	"JAN"* | "MAR"* | "MAY"* | "JUL"* | "AUG"* | "DIC"* )
		echo "el $mes tiene 31 días";;
	
	"FEB"*)
		echo "el $mes tiene 29 días";;
	
	"APR"* | "JUN"* | "SEP"* | "NOV"* )
		echo "el $mes tiene 30 días";;
esac

#ver manual comando tr para saber que hace cuando se la asigno a la variable mes
