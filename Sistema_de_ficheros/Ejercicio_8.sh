#!/bin/sh

usuarios=$(ls /users/)
for i in $usuarios
do
    size=$(du -sb /users/$i | egrep -o -e '[0-9]+')
    file_number=$(ls /users/$i | wc -l)
    echo "$i    $size   $file_number"
done
