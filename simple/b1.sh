#!/bin/bash

[[ $(($#%2)) -eq 0 ]] && echo "Cantidad de argumentos par!" || echo "Cantidad de argumentos impar!"
