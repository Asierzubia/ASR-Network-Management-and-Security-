#!/bin/sh

#Lo hago para quitarme los espacios que hay en las lineas
lista_identificadores=$(cat /etc/passwd | sed 's/ //g')

for i in $lista_identificadores
do
    identificador=$(echo ${i%:*:*:*})
    identificador_segundo=$(echo ${identificador%:*})
    identificador_final=$(echo ${identificador_segundo##*:})
    identificador_grupo=$(echo ${identificador##*:})

    #echo Identificador $identificador_final
    #echo identificador Grupo $identificador_grupo
    if [[ $identificador_final -ne $identificador_grupo ]]
    then
        nombre_usuario=$(echo ${identificador%:*:*:*})
        echo $nombre_usuario
    fi

done