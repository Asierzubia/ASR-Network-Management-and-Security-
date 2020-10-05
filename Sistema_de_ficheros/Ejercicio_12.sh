#!/bin/sh

if [[ $# -lt 1 ]]
then
    echo "Tienes que introducir la ruta de al menos un directorio"
else
    du -sb $@
fi