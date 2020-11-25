#!/bin/bash
#Para mirar las ips de la red local
red_local=`sh ejercicio_6.sh`

#conexion ips de la red local
for ip in $red_local
do
    ping -c 1 $ip
    respuesta_red_local=`$?`
    if [[ $respuesta_red_local -eq 0 ]]
    then
        echo "La conexion con la ip -> $ip de la red local es correcta"
    fi
done

respuesta_localhost=`ping -c 1 localhost`
respuesta_nodo=`ping -c 1 ehu.es`
respuesta_servidor=`ping -c 1 google.com`

#conexion localhost
if [[ $respuesta_localhost -eq 0 ]]
then
        echo "La conexion con localhost es correcta"
fi
#conexion nodo
if [[ $respuesta_nodo -eq 0 ]]
then
        echo "La conexion con nodo es correcta"
fi
#conexion servidor
if [[ $respuesta_servidor -eq 0 ]]
then
        echo "La conexion con servidor es correcta"
fi

#por ultimo meter esta linea en mi archivo cron
#0 * * * * sh ejercicio_8.sh