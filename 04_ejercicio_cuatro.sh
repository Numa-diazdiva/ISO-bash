echo "Exit status: $?"
echo "Contenido de home: $HOME"
echo "Cantidad argumentos que recibe el script: $#"
echo "Contenido de la lista de argumentos: $*"
exit 1

# Vemos que $HOME contiene la dirección del directorio home del usuario
# $# contiene la cantidad de argumentos que recibimos
# $* obtenemos la lista de argumentos separada con espacios
# $? guarda el valor de retorno del último comando que se ejecutó
