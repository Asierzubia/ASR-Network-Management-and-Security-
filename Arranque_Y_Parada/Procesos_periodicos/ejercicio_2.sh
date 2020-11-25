cd /etc/cron.daily
ls
#Los ficheros que contiene son los siguientes:
    apt-compat
    bsdmainutils
    dpkg
    logrotate
    man-db
    passwd
    quota
    sysstat
#Ahora voy a analizar que hace le fichero passwd
El passwd es un script
Comprueba a ver si existen los archivos passwd,group,shadow,gshadow dentro del directorio /var/backups
Lo hace de uno en uno con un for.
Después de comprobar si existe el archivo, entonces comprueba a ver si backup del archivo actual es el mismo que hay en la carptea /etc
Si no son iguales entonces copia lo que hay en /etc/archivo en archivo.bak y le da permisos al archivo creado.

Basicamente se trata de un sistema de backup
