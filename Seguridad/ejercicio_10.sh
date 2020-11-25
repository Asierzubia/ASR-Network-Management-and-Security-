#!/bin/sh
cat /etc/passwd | while IFS=":" read user passwd otros
do
    if [[ $passwd != "" ]]
    then
        sudo passwd -e $user
    fi
done