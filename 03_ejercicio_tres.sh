# hola
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y mañana ya no me acuerdo de lo que quise hacer
echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es: `pwd`"
echo "El contenido de dicho directorio es: `ls ./`"

# a) Recordamos que los permisos se asignan con "chmod a+x"
# d) Significa que estamos enviando la salida estándar del comando a el string en esa posición
