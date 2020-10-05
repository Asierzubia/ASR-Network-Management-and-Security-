#!/bin/bash

if [[ $# -lt 3 ]]
then
    echo "Tienes que introducir tres argumentos"
else
    du -b -t $3 $1* | while read tamano file
    do
        mv $file $2
    done
fi