#!/bin/bash

function file_exists {
	if [ -e $1 ]
	then
		if [ -f $1 ]
		then
			return 0
		elif [ -d $1 ]
		then
			return 1
		fi
	fi
	return 2
}
