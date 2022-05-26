#!/bin/bash

CONTADOR=0

for PALABRA in $@
do
	CONTADOR=$(($CONTADOR + ${PALABRA} -gt 3 ? 1 : 0 ))
done

echo  $CONTADOR
