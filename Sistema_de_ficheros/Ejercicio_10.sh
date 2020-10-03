#!/bin/sh

usuarios=$(ls /home/)
for usuario in $usuarios
do
    du -b | while read size file
    do
        #524288000 es el número exacto de bytes que son 500MB
        if [[ $size -gt 524288000 ]]
        then
            echo "USUARIO: $usuario     Fichero: $file" >> /var/log/user-storage-max500MB.log
        fi

    done
done