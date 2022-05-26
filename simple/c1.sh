#!/bin/bash


if [ $# -eq 1 ]
then
	if [ -e $1 ]
	then
		#El archivo existe!
		echo "$1 existe!"
		if [ -f $1 ]
		then
			#Es un archivo regular!
			echo "Es un archivo regular!"
		elif [ -d $1 ]
		then
			#Es un directorio!
			echo "Es un directorio!"
		else
			echo "No es un archivo regular ni un directorio :("
		fi
	else
		#El archivo no existe!
		echo "$1 no existe :("
	fi
else
	echo "Cantidad de argumentos necesarios: 1"
	echo "Cantidad de argumentos encontrados: $#"
fi
