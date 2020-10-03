#!/bin/sh

echo Teclea tres numero para hallar la suma
read a b c
suma=$(echo $a + $b + $c | bc -l)
echo $suma

