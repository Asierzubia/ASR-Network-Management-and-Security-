#!/bin/sh

todos_ficheros=$(ls -p | grep -v /)
for i in $todos_ficheros
do
	extension=$(echo ${i##*.})
	#creo el archivo para guardar las extensiones
	echo $extension >> extensiones.txt
done

extensiones_con_numero=$(uniq -c extensiones.txt)
#El bucle a continuación no hace falta, lo hago para que printeo por pantalla sea mas bonito
#echo $extensiones_con_numero
contador=0
for j in $extensiones_con_numero
do
	par_impar=`expr $contador % 2`
	if [ $par_impar -eq 0 ]
	then
		echo -n "$j <="
	else
		echo " $j"
	fi
	contador=$(($contador+1))
done
#echo $extensiones_con_numero
#elimino el archivo con las extensiones porque ya no me hace falta
rm extensiones.txt



