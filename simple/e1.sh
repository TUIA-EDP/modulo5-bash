#!/bin/bash
README_FILES=$(ls -R /usr/share/doc | grep ^README$ | wc -l)

echo "Cantidad de archivos README en /usr/share/doc: $README_FILES"
