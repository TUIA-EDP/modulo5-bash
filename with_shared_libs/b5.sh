#!/bin/bash

# Dos formas diferentes de resolver el mismo ejercicio, usando una funcion

source ./lib/checkers.sh

# OPCION 1
if [[ $(check_date $@) == true ]]
then
  echo "Fecha Valida!"
else
  echo "Fecha NO Valida!"
fi

# OPCION 2
check_date $@ > /dev/null && echo "Fecha Valida!" || echo "Fecha NO Valida!"
