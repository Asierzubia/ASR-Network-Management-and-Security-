#!/bin/bash

ps -eo pid,uid,pcpu,time,cmd | tail -n +2 | while read pid uid pcpu tiempo cmd
do

    if [[ "$tiempo" > "00:00:02" ]]
    then
        echo "$pid  $uid    $pcpu   $tiempo   $cmd" >> /var/log/Lista-procesos-ExcesoGPU.txt
    fi

done