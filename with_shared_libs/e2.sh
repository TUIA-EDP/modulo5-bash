#!/bin/bash

source ./lib/count_files.sh

SH_FILES=$(countFilesWithExtension /usr/share/doc sh)
TXT_FILES=$(countFilesWithExtension /usr/share/doc txt)

echo "Cantidad de archivos sh en usr/share/doc: $SH_FILES"
echo "Cantidad de archivos txt en usr/share/doc: $TXT_FILES"
