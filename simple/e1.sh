#!/bin/bash

README_FILES=$(ls -R /usr/share/doc | grep ^README$ | wc -l)

# Si queremos recibir el directorio y el nombre del archivo como parametros:
#README_FILES=$(ls -R $1 | grep ^$2$ | wc -l)

echo "Cantidad de archivos README en /usr/share/doc: $README_FILES"
