#!/bin/sh
#He añadidio la opción -v para que me coja todas la linas excepto las lineas en blanco o lineas que contengan tabuladores
lineas_sin_espacios_tabuladores=$(egrep -v -e '^[[:blank:]]*$' prueba.txt)
#Hago un for para que quede como estaba el archivo original pero sin las linas en blanco o que contengan tabuladores
for i in $lineas_sin_espacios_tabuladores
do
    echo $i
done