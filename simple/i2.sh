#!/bin/bash

LIMIT=$1

# Este ejercicio puede hacerse de 2 formas diferentes.
# La primer forma mostrada, va a tener mas iteraciones
# ya que ingresara al for para cada numero entre LIMIT 
# y 1 y luego comprobara en cada iteracion si el numero
# es par, y de ser asi lo imprimira por consola

# for i in $(seq $LIMIT -1 1)
# do
# 	[ $(($i%2)) -eq 0 ] && echo $i
# done


# La segunda forma, es la version optimizada del codigo
# anterior. Primero comprobaremos si LIMIT es par o impar
# En caso de ser impar, le restaremos 1, convirtiendolo
# en par. A partir del LIMIT par, iteramos con un paso de
# -2, ahorrandonos iteraciones innecesarias y evitandonos
# chequear en cada paso si el numero es par o impar.

[ $(($LIMIT%2)) -eq 1 ] && let LIMIT-- 
for i in $(seq $LIMIT -2 1)
do
	echo $i
done
