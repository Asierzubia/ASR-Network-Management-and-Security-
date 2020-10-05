#!/bin/sh

find -type f \( -perm -500 -o -perm -000 -o -perm -100 -o -perm -400 \) -ls
