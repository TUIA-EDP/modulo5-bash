#!/bin/bash

#EXIT CODES
#1 = NO es un archivo
#2 = NO tiene permiso de lectura
#0 Todo bien!

source lib/file_exists.sh

function exit_on_failure {
	if [ $1 != 0 ]
	then
		echo "El archivo $2 no existe o no es un archivo regular"
		exit 1
	fi
}

function check_read_permission {
	if [ ! -r $1 ]
	then
		echo "El archivo $1 no tiene permiso de lectura"
		exit 2
	fi
}

function count_file_lines {
	N_LINES=$(wc -l < $1)
	echo $N_LINES
}

#ACA EMPIEZA NUESTRO PROGRAMA
#DECLARAMOS UN ARRAY
N_LINES=()
for FILE in $@
do
	file_exists $1 
	exit_on_failure $? $1
	check_read_permission $1
	N_LINES+=( $(count_file_lines $FILE) )
done

function count_unique() {
	local LC_ALL=C

	if [ "$#" -eq 0 ] ; then
		echo 0
	else
		echo "$(printf "%s\000" "$@" |
		sort --zero-terminated --unique |
		grep --null-data --count .)"
	fi
}

if [ "$(count_unique "${N_LINES[@]}")" -eq 1 ]
then
	echo "Tienen la misma cantidad de lineas: ${N_LINES[0]}"
else
	echo "No tienen la misma cantidad de lineas:"
	for i in $(seq ${#N_LINES[@]})
	do
		echo $i : ${N_LINES[$((i-1))]}
	done
fi

