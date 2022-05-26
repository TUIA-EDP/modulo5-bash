#!/bin/bash

#Crear un script que permita recibir tres argumentos: una palabra P, un número positivo n
#y una ruta. Se debe validar la cantidad de argumentos, que n cumpla los requerimientos y
#se tenga permiso de escritura en la ruta indicada.

if [ $# -eq 3 ]
then
	if [ $2 -lt 0 ]
	then
		echo ERROR, el numero debe ser positivo
	else
		if [ -w $3 ]
		then
			echo Ingreso correcto los parametros
		fi
	fi
else
	echo Le pifiaste con la cantidad de parámetros.
	echo Debe recibir 1 palabra, 1 número positivo, y una ruta
fi

$(cd $3)
#$(touch palabra_$1.dat)

for NUM in $(seq 1 $2);
do
	echo "$NUM se ingreso la palabra $1" >> palabra_$1.dat
done
