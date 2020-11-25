#Para desactivar el CTRL+ALT+DEL deberemos de
#entrar en el archivo de configuracion 
#/etc/inittab y comentar la siguiente linea
# What to do when CTRL-ALT-DEL is pressed.
ca:12345:ctrlaltdel:/sbin/shutdown -t1 -a -r now
#Al reiniciar la maquina ya no hace nada cuando pulso esos tres botones
#Para hacer inmutable un archivo tenemos que usar
#el siguiente comando y opcion :
sudo chattr +i archivo
#el sudo habr'ia que ponerlo si queremos hacer inmutable algun
#archivo con privilegios root

#Para comprobar que es inmutable, podemos intentar modificarlo,
#aun que ya veremos que no se puede.
#O podemos utilizar el comando :
lsattr archivo
#Con este comando podemos ver los atributos de un archivo,
#si aparece el atributo i, es que ese archivo es inmutable.