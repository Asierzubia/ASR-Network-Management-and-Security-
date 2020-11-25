#!/bin/bash

./Ejercicio_7.sh | while read pid uid pcpu tiempo cmd
do
    kill -19 $pid
    echo "$pid" >> /var/log/Lista-procesos-ExcesoCPU-Parados.txt
done