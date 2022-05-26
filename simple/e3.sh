#!/bin/bash

ES_NUMERO='^-?[0-9]+$'

if [ $# -gt 10 ]
then
	echo "Se aceptan 10 argumentos como máximo"
	exit 1
fi

SUM=0
for arg in $@
do
	echo $arg | grep -E $ES_NUMERO > /dev/null 2>&1
	if [ $? == 0 ]
	then
		SUM=$(( $SUM + $arg))
	fi
done

echo "La suma es: $SUM"
