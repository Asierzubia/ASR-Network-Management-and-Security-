#!/bin/sh
cat /etc/passwd | (while IFS=":" read user passwd pid otros
do 
    sh ejercicio_3.sh $pid
done