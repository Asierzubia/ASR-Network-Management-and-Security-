#!/bin/sh

#Lo hago para quitarme los espacios que hay en las lineas
cat /etc/passwd | while IFS=":" read nombre pass id_usu resto
do
    if [[ $id_usu -gt 100 ]]
    then
        echo $nombre
    fi
done
