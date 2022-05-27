#!/bin/bash

#Queda completarlo con que muestre la cantidad de lineas que tiene cada archivo de texto
#En el ejercicio C.3) esta resuelto esto. Deberian ver como integrarlo al ejercicio
#Tambien pueden hacerlo con una función.


#Chequeo que ingrese al menos 1 parámetro (se podria mejorar indicando que pueda ingresar solo 1, no mas)
if [ $# -eq 0 ]
then
	echo Error, ingrese al menos 1 ruta
	echo ./$(basename $0) /RUTA
else
	DIR=$1 # Le asigno la ruta que ingreso a la variable DIR, solo para trabajar más prolijo
	REGULAR_FILE=0 # Declaro una variable para usar luego contando los archivos regulares
	DIRECTORY=0 # Declaro una variable para usar luego contando los directorios

	if [ -d $DIR ] && [ -r $DIR ] # Veo que DIR sea un directorio y se pueda leer
	then
		for i in $(ls);	
		do
			if [ -f $i ]
			then
				((REGULAR_FILE++)) # contador de archivos regulares
			fi
	
			if [ -d $i ]
			then
				((DIRECTORY++)) #contador de directorios
			fi
		done

		#muestro los datos
		echo Archivos regualares: $REGULAR_FILE
		echo Directorios: $DIRECTORY
	else
		echo El directorio ingresado no esta accesible o no existe
	fi

fi
