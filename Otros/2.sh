#!/bin/sh

#Lo hago para quitarme los espacios que hay en las lineas
identificadores=$(cat -s /etc/passwd | sed 's/ //g')
maximo=0
for i in $identificadores
do
    #Ahora me voy a quedar solo con el tercer campo que es lo que me interesa
    usu=$(echo ${i%:*:*:*:*})
    usuario_final=$(echo ${usu##*:})
    if [[ $usuario_final -ge $maximo]]
    then
        maximo=$usuario_final
    fi
done

echo $usuario_final


