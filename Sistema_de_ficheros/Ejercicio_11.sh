#!/bin/sh

if [[ $# -lt 1 ]]
then
    echo "Error: tiene que introducir la ruta de un directorio sin una / al final"
else
    du -sb $1
fi
 