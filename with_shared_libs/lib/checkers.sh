#!/bin/bash

function check_date {
  date -d "$2/$1/$3" > /dev/null 2>&1 && echo true && return 0 || echo false && return 1
}

function check_ip {
  DIRS=$( echo $1 | tr "." "\n" ) # reemplaza los puntos por \n, es decir separa la direccion IP
  DIR_CANT=$(echo $DIRS | wc -w) # Otra forma de hacerlo podria ser: DIR_CANT=$(wc -w <<< "$DIR")

  if [ $DIR_CANT -eq 4 ]
  then
    for DIR in $DIRS
    do
      [[ $DIR -lt 0  || $DIR -gt 256 || ${#DIR} -gt 3 ]]  && echo false && return 2
    done
    echo true && return 0
  else
    echo false && return 1
  fi
}
