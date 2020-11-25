#!/bin/bash
users_with_proceses=`ps -eo user | tail -n +2 | sort -d | uniq`
for usuario in $users_with_proceses
do
    numero_procesos=`ps -u $usuario | tail -n +2 | wc -l`
    echo "El usuario $usuario tiene --->"
    echo $numero_procesos
done
