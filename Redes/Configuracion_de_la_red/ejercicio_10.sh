#!/bin/sh

for i in `seq 255`
do
    echo "Se va a escanear la red 127.0.0.$i"
    #escaneado de los puertos
    netcat -zv 127.0.0.$i 20-25
done
