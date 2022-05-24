#!/bin/bash

if [[ $# != 1 ]]
then
	echo "Acepto únicamente 1 argumento de entrada"
	echo "Usage: c1 arg"
	exit 1
fi

LOWER=$(echo $1 | tr '[:upper:]' '[:lower:]')
REV=$(echo $1 | rev)
REV_LOWER=$(echo $LOWER | rev)
echo $1
echo $REV
echo $LOWER
echo $REV_LOWER

# Esto es case sensitive
if [[ $1 == $REV ]]
then
	echo "$1 es un palindromo"
else
	echo "$1 NO es un palindromo"
fi

# Esto es case insensitive
if [[ $LOWER == $REV_LOWER ]]
then
	echo "$1 es un palindromo"
else
	echo "$1 NO es un palindromo"
fi

