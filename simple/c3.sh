#!/bin/bash

#RECIBO EN $1 EL PRIMER ARCHIVO
# Y EN $2 EL SEGUNDO ARCHIVO

#CHEQUEO SI EXISTEN
if [ ! -e $1 ] || [ ! -e $2 ]
then
	echo "Alguno de los archivos no existen"
	exit 1
else
	if [ ! -f $1 ] || [ ! -f $2 ]
	then
		echo "Alguno de los archivos no es un archivo"
		exit 1
	fi
fi

if [ ! -r $1 ] || [ ! -r $2 ]
then
	echo "Alguno de los archivos no tiene permiso de lectura"
	exit 2
fi

N_LINEAS_1=$(wc -l < $1)
N_LINEAS_2=$(wc -l < $2)

if [[ $N_LINEAS_1 == $N_LINEAS_2 ]]
then
	echo "Tienen la misma cantidad de lineas: $N_LINEAS_1"
else
	echo "No tienen la misma cantidad: $N_LINEAS_1 != $N_LINEAS_2"
fi




