#Describe que es un paquete de Linux Debian y que tipo de información contiene.
Un paquete debian es un paquete comprimido de instalación de Software debian.
Hay dos tipos de paquetes Debian:

--- Paquetes binarios: que contienen ejecutables, archivos de configuración, 
páginas man/info, dependencias, información sobre derechos de autor y otra documentación. Estos
paquete se distribuyen con un formato de archivo específico denominado .deb. Este tipo
de paquetes pueden ser extraidos utilizando la utilidad Debian dpkg. 
--- Paquetes fuente: que consisten en un archivo .dsc que describe el paquete de la fuente 
(incluyendo los nombres de los siguientes archivos), un archivo .orig.tar.gz que contiene 
la fuente original sin modificar en formato tar comprimido con gzip y normalmente un archivo 
.diff.gz que contiene los cambios específicos de Debian a la fuente original. La utilidad dpkg-source 
empaqueta y desempaqueta los archivos de fuentes de Debian.
