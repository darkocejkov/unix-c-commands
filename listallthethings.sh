#!/bin/bash

find_directories(){

	for f in $1/*/; do
		#if the file is a directory
		if [[ -d $f ]] 
		then
			ls -i "$f$2" 2> listerrors.txt
			
			find_directories $f $2

		fi
	done
}

for a in "$@"
do
	#ls current directory
	ls -i $a 2> listerrors.txt
	#ls recursive directories
	find_directories . $a
done
