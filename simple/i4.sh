#!/bin/bash

# El usuario ingresa una cierta cantidad de numeros.
# Con esos numeros -> cuantos pares, positivos y que tengan 3 cifras


#Inicializo mis contadores
CANT_PARES=0
CANT_POS=0
CANT_TRES_CIFRAS=0

for NUM in $@
do
	#Chequeo que sea par
	if [ $(($NUM%2)) -eq 0 ]
	then
		#CANT_PARES=$(($CANT_PARES + 1))
		let CANT_PARES++
	fi

	#Chequear que sea positivo
	if [ $NUM \> 0 ]
	then
		let CANT_POS++
	fi

	#Chequear que tenga 3 cifras
	#if ((( $NUM > 99 )) && (( $NUM < 1000 )))  || ((( $NUM < -99 )) && (( $NUM > -1000 )))
	if ([[ $NUM -gt 99 ]] && [[ $NUM -lt 1000 ]]) || ([[ $NUM -lt -99 ]] && [[ $NUM -gt -1000 ]])
	then
		let CANT_TRES_CIFRAS++
	fi
done

echo "Cantidad de numeros pares ingresados: $CANT_PARES"
echo "Cantidad de numeros de 3 cifras ingresados: $CANT_TRES_CIFRAS"
echo "Cantidad de numeros positivos ingresados: " $CANT_POS

