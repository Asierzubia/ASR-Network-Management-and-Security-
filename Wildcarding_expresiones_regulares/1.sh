#!/bin/sh

for i in $@
do
	ruta=$(find $HOME -name $i)
	numero_rutas=$(find $HOME -name $i | wc -l)
	if [ $numero_rutas -eq 1 ]
	then
		echo Ruta del fichero: "${ruta%/*}"
		fichero_sin_ruta=$(echo "${ruta##*/}")
		echo Nombre de fichero sin ruta: $fichero_sin_ruta
		echo Extension del fichero: "${ruta##*/*.}"
		echo Nombre de fichero sin ruta ni extensión: "${fichero_sin_ruta%.*}"
	else
		echo Tiene dos archivos diferente con el mismo nombre, este programa no soporta este caso.
	fi
done
