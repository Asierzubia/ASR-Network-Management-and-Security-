#!/bin/bash
sudo ifconfig | grep "inet " | tr -s ' ' | while IFS=" " read inet ip netmask mask otros
do
        if [[ $mask == "255.255.255.0" ]]
        then
                echo $ip
        fi
done
