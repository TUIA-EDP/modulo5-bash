#!/bin/bash

#C.5) Crear un programa que permita recibir el nombre completo de un mes del año (M) en
#inglés y muestre por pantalla el mensaje “El mes M tiene X días”. Emplear case para su
#resolución.
#Nota: ignorar el caso de año bisiesto.

mes=$1

case $mes in
	"Jan"*) 
		echo El mes $mes tiene 31 días;;
	"Feb"*)
		echo El mes $mes tiene 29 días;;
	"Mar"*)
		echo El mes $mes tiene 31 días;;
	"Apr"*)
		echo El mes $mes tiene 30 días;;
	"May"*)
		echo El mes $mes tiene 31 días;;
	"Jun"*)
		echo El mes $mes tiene 30 días;;
	"Jul"*)
		echo El mes $mes tiene 31 días;;
	"Aug"*)
		echo El mes $mes tiene 31 días;;
	"Sep"*)
		echo El mes $mes tiene 30 días;;
	"Oct"*)
		echo El mes $mes tiene 31 días;;
	"Nov"*)
		echo El mes $mes tiene 30 días;;
	"Dic"*)
		echo El mes $mes tiene 31 días;;

esac

#¿Porqué uso Jan* , Feb* ?¿cual es el sentido?
