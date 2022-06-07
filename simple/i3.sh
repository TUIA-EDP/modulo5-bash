#!/bin/bash

CONTADOR_PALABRAS=$#
CONTADOR_PALABRAS_TRES_LETRAS=0

if [ $# -eq 0 ]
then
	echo "No hay argumentos"
	# exit 1
else
	for PALABRA in $@
	do
		[ ${#PALABRA} -ge 3 ] && let CONTADOR_PALABRAS_TRES_LETRAS++
	done
	echo "Cantidad de palabras: $CONTADOR_PALABRAS"
	echo "Cantidad de palabras con al menos 3 letras: $CONTADOR_PALABRAS_TRES_LETRAS"
	#exit 0
fi
