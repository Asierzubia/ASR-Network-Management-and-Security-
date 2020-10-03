#!/bin/sh
#El tamaño del espacio que se le paso como argumento al prgrama debe pasarse en unidad de bits
du -sb /users/* | while read size ruta_usuario
do
    if [[ $1 -le $size ]]
    then
        usuario=$(echo "${ruta_usuario##*/}")
        echo $usuario >> /var/log/user-storage.log
        echo "Esta utilizando un espacio de almacenamiento supeior al recomendado. El tamaño que está utilizando es $size" > /users/$usuario/README.txt
    fi
done