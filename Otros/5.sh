#!/bin/sh

numero_lineas_vacias=$(egrep -c '^$' prueba.txt)
echo $numero_lineas_vacias
