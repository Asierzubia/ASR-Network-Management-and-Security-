#!/bin/sh
suma=0
for i in $@
do
	suma=$(expr $suma + $i)
done

echo $suma
