#!/bin/bash

# Regex para evaluar esta condicion queda de tarea! 
# Muestro solucion mas sencilla sin usar regex ;)

DIRS=$( echo $1 | tr "." "\n" ) # reemplaza los puntos por \n, es decir separa la direccion IP
DIR_CANT=$(echo $DIRS | wc -w) # Otra forma de hacerlo podria ser: DIR_CANT=$(wc -w <<< "$DIR")

if [ $DIR_CANT -eq 4 ]
then
  for DIR in $DIRS
  do
    [[ $DIR -lt 0  || $DIR -gt 256 || ${#DIR} -gt 3 ]]  && echo "Direccion IP NO Valida!" && exit 1
  done
  echo "Direccion IP Valida!" && exit 0 
else
  echo "Direccion IP NO Valida!" && exit 2
fi
