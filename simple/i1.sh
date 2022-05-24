#!/bin/bash

LIMIT=10
for (( i=1; i<$LIMIT; i = i + 2 ))
do
	echo $i
done

for i in $(seq 1 2 $LIMIT)
do
	echo $i
done
