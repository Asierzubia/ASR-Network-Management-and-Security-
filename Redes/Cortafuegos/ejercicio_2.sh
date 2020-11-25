#Prohibir todo el tráfico por encima del puerto 8192, excepto el correspondiente al sistema local y el servicio webmin. Este último servicio sólo podrá ser accedido por el sistema local y por el sistema host (anfitrión de la máquina virtual VMWare).
iptables -A INPUT -p tcp --dport 10000 -j ACCEPT #Acepto webmin
#El servicio ftp sólo puede ser accedido por la máquina virtual y el host.

iptables -A INPUT -s 192.168.127.132 -p tcp --dport 20:21 -j ACCEPT
iptables -A INPUT -s 127.0.0.2 -p tcp --dport 20:21 -j ACCEPT

iptables -A OUTPUT -d 192.168.127.132 -p tcp --sport 20:21 -j ACCEPT
iptables -A OUTPUT -d 127.0.0.2 -p tcp --sport 20:21 -j ACCEPT

#Los servicios ssh y web abiertos para todos.
#INPUT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT #http
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT #http-alt
iptables -A INPUT -p udp --dport 8080 -j ACCEPT #http-alt
iptables -A INPUT -p tcp --dport 443 -j ACCEPT #https
iptables -A INPUT -p tcp --dport 22 -j ACCEPT #ssh
#OUTPUT
iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT #http
iptables -A OUTPUT -p tcp --dport 8080 -j ACCEPT #http-alt
iptables -A OUTPUT -p udp --dport 8080 -j ACCEPT #http-alt
iptables -A OUTPUT -p tcp --dport 433 -j ACCEPT #https
iptables -A OUTPUT -p tcp --dport 22 -j ACCEPT #ssh

#El resto de puertos abiertos para la red local pero no para Internet.
iptables -A INPUT -s 192.168.127.132 -p tcp -j ACCEPT
iptables -A INPUT -s 192.168.127.132 -p udp -j ACCEPT

iptables -A OUTPUT -d 192.168.127.132 -p tcp -j ACCEPT
iptables -A OUTPUT -d 192.168.127.132 -p udp -j ACCEPT

#Suponiendo que las reglas por defecto de input y output es todo drop
