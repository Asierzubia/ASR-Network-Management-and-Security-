#!/bin/sh

lista_identificadores=$(cat /etc/passwd | sed 's/ //g')

for i in $lista_identificadores
do
    identificador=$(echo ${i%:*:*:*:*})
    identificador_final=$(echo ${identificador##*:})
    if [[ $identificador_final -ge 100 ]]
    then
        echo $identificador_final
    fi
done