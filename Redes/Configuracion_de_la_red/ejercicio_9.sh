#en el servidor
netcat -l -p 20000
#en el cliente para enviar un comando
echo "esto es la monda" | netcat 192.168.127.132 20000
#Hay un problema y es que solo puedo enviar un comando y no se porque
#Estableceer una shell inversa
