#!/bin/sh

numero_palabras_lineas=$(awk '{ print NF }' prueba.txt)
numero_lineas_vacias=0
for i in $numero_palabras_lineas
do
    if [[ $i -eq 0 ]]
    then
    numero_lineas_vacias=$(($numero_lineas_vacias + 1))
    fi
done

echo $numero_lineas_vacias
