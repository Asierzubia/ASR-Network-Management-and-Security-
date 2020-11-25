#!/bin/bash

cat /var/log/Lista-procesos-ExcesoCPU-Parados.txt | while read pid uid pcpu tiempo cmd
do
    kill -CONT $pid
done