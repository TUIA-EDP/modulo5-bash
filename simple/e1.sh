#!/bin/bash

#$1 ruta para buscar
#$2 nombre exacto a buscar

ls -R $1 | grep -e "^$2$" | wc -l
