#!/bin/sh

maximo=0
usuario="root"
cat /etc/passwd | (while IFS=":" read nombre pass id_usu  resto
do	
    	if [[ $id_usu -ge $maximo ]]
    	then
        	maximo=$id_usu
		usuario=$nombre
    	fi
done

echo $usuario $maximo;)


