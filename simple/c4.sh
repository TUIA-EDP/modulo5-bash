#!/bin/bash

# En $1 tenemos un año
# Que sea divisible por 4
# Pero no por 100
# Y si es divisible por 100 que sea divisible por 400

if [ $(($1 % 4)) -eq 0 ] && ([ $(($1 % 100)) -ne 0 ] || [ $(($1 % 400)) -eq 0 ])
then
	echo "$1 es bisiesto"
fi
