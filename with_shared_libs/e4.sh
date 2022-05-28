#!/bin/bash

source ./lib/checkers.sh

[[ $(check_ip $1) == true ]] && echo "Direccion IP Valida!" || echo "Direccion IP NO Valida!"
