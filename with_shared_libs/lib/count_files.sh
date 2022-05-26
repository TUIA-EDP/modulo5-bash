#!/bin/bash

# El argumento -R tiene en cuenta el contenido de
# las carpetas que se encuentran en el directorio
# No es requerido en el enunciado (ej. E1) pero lo
#  agregamos porque sino no habia ningun archivo README


function countFiles {
	ls -R $1 | grep ^$2$ | wc -l
}

function countTXT {
	ls -R $1 | grep \.txt$ | wc -l
}

function countFilesWithExtension {
	ls -R $1 | grep \.$2$ | wc -l
}
