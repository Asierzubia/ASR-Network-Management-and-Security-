#!/bin/bash
free -g > estado_memoria.txt
#-g para que me muestre las cantidades de memoria en gigabytes
#Ahora habria que introducir la siguiente linea en mi archivo cron
#*/10 * * * * sh Ejercicio_9A.sh