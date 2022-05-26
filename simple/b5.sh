#!/bin/bash

#Pido los 3 argumentos de entrada
#read -p "Dia: " dia
#read -p "Mes: " mes
#read -p "Anio: " anio


#Chequeo que sean correctos
#date -d "$mes/$dia/$anio"


read -p "Dia: " dia && read -p "Mes: " mes && read -p "Anio: " anio && date -d "$mes/$dia/$anio" && echo "Fecha Valida!" || echo "Fecha no valida!"

#echo ${#dia}
