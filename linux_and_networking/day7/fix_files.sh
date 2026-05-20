#!/bin/bash

echo "requested directory $1"

ls $1

find $1 -type f -perm -002 | while read -r file; do 
	ls -l $file
	chmod 744 $file
	ls -l $file
	echo "------------------------------------"
	done;
