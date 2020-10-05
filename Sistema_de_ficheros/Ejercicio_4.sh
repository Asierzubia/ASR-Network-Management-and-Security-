#!/bin/sh
tamano_fijado=0
if [[ $# -lt 2 ]]
then
    #pongo ese número porque es el número de bytes exactos que tiene 1MB
    tamano_fijado=1048576
else
    #para convertirlo en bytes
    tamano_fijado=$(echo "$2 * 1024" | bc)
fi

du -sb $1/* | while read size ruta
do
    if [[ $size -ge $tamano_fijado ]]
    then
        fichero=$(echo "${ruta##*/}")
        echo $fichero
    fi
done