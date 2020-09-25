#!/bin/sh

numero_lineas_vacias=$(egrep -c '^[[:blank:]]*$' prueba.txt)
echo $numero_lineas_vacias 
