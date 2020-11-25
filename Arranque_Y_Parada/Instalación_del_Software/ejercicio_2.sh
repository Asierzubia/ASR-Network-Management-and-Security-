#Describe las diferencias entre instalar una aplicación a través de un 
#repositorio de paquetes o través de un código fuente.


Intalar un aplicación a través de código fuente
supone tener que compilar el programa y despues 
instalarlo. Ahi que tener los compiladores adecuados
para poder compilar dicho programa.
Es una manera más compleja de instalar un paquete.
Sin embargo instalandolo a traves de un repositorio
de paquetes no es necesario, ya que viene precompilado 
y listo para instalar.

Otra gran diferencia son las dependencias. Dpkg ayuda 
a instalar un paquete fuente de manera más sencilla,
pero solo instala el software de ese paquete, no las
dependencias del mismo.Te avisa de que dependencias
necesita el programa,pero tendríamos que instalarlas nosotros
manualmente.

Sin embargo al instalar el programa desde el respositorio
estas dependencias se instalan de manera automatica.