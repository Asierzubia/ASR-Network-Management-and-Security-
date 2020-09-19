#!/bin/sh

location=$(pwd)
location_list=$(ls $location)
for i in $location_list
do
	echo $i
done

