#!/bin/sh

if [ -d $1 ]
then
	echo Si existe el directorio
	num_subdirectorios=$(ls -d */)
	comprobacion=$(echo $?)
	if [ $comprobacion -eq 0 ]
	then
		echo El numero de directorios es $num_directorios
	else
		echo No existe ningun directorio
	fi
	num_ficheros=$(ls -p | grep -v / | grep *.txt | wc -l)
	echo El numero de ficheros son $num_ficheros
else
	echo No existe dicho directorio
fi
