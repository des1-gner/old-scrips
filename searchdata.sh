#!/bin/bash

read -p "Enter File: " var

if [ -f $var ]
then 
	echo "File exists"    
    read -p "Enter text to search in $var : "
    grep -i "$var2" $var

    for var2 in `cat $var`
    do
	    echo "$var2" > pattern.txt
    done

else 
    echo "File not found. "
fi



