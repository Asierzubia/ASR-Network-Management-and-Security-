#!/bin/sh

#Lo hago para quitarme los espacios que hay en las lineas
cat /etc/passwd | while IFS=":" read nombre pass id_usu id_grupo resto
do
    if [[ $id_usu != $id_grupo ]]
    then
        echo $nombre
    fi
done

