#!/bin/sh
#Primero localizo donde esta el home del usuario que me pasan como parametro(pId)
user_home=""
nombre_usuario=""
cat /etc/passwd | (while IFS=":" read user passwd pid gid description home terminal
do 
    if [[ $1 == $pid ]]
    then
        user_home = $home
        nombre_usuario = $user
        break
    fi
done
#Voy a conseguir la fecha de hoy para ponerla en el script
fecha = date +%Y-%m-%d
#Ahora voy a proceder a realizar la copia de seguridad del contenido del directorio principal de dicho usuario
tar cvf /backup/$fecha-$nombre_usuario.tar.gz $user_home/*
)
