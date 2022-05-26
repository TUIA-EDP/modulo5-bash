#!/bin/bash

#Creo el archivo /tmp/args
touch /tmp/args

#Escribo cada argumento de entrada en /tmp/args
for arg in $@
do
	echo $arg >> /tmp/args
done

#Muestro el contenido del archivo por consola
cat /tmp/args
