#!/bin/bash

#------------------------------------------------------------------------------
## Compile and execute a c or cpp program.
#------------------------------------------------------------------------------

# Check that an input file has been provided.
if [ "$#" -ne 1 ]
then
	echo "Please provide a .c or .cpp file."
	exit
fi

# Get the input file's extension.
file=$1
extension=${file##*.}
output=$(echo "$1" | cut -f 1 -d '.')

## Compile, execute, and then remove input file.
# If *.c then compile with gcc.
if [ $extension == "c" ]
then
	gcc $1 -o $output.exe
	./$output.exe
	rm ./$output.exe
# If *.cpp then compile with g++.
elif [ $extension == "cpp" ]
then
	g++ $1 -o $output.exe
	./$output.exe
	rm ./$output.exe
else
	echo "$extension files are not recognized!"
	exit
fi

## ENDOF
#------------------------------------------------------------------------------
