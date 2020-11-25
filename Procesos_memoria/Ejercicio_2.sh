#!/bin/bash

#Creo un proceso y lo dejo en segundo plano
(while sleep 2; do date>/dev/null;done)&
#Para pasrlo a primer plano usar el siguiente comando
fg %numero del proceso
#Para saber el numero del proceso tenemos que utilizar el siguiente comando
jobs -l
#Para devolverlo a primer plano tenemos que pararlo primero y luego
#reunadarlo pero en primer plano
CTR + Z
#y despues
bg %numero del proceso
#Para bajarle la prioridad utilizamos el siguiente comando
renice -n 15 -p identificador_proceso
#Para hacerlo terminar
kill %numero del proceso

