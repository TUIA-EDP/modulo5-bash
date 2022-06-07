#!/bin/bash

#$1 path

N_FILES=`ls $1 | grep -E "^[a-z]{2}.*\.(sh|txt)$" | wc -l`

echo "Hay $N_FILES archivos terminados en .sh o .txt que empiecen con 2 letras minúsculas"
