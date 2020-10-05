#!/bin/sh

df --output=source,pcent | tail -n +2 | while read ficheros uso
do 
    uso=$(echo "${uso%%%*}")
    if [[ $uso -gt 85 ]]
    then
        echo $ficheros
    fi
done