#!/bin/sh

if [ $1 -gt $2 ]
then
	echo $1 es el de mayor valor
elif [ $1 -eq $2 ]
then
	echo son iguales
else
	echo $2 es el de mayor valor
fi
