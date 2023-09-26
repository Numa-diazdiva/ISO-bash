#!bin/bash

# Un detalle: para que * no sea "todos los archivos del directorio", debe ser ingresado como string "*"
if [ $# -lt 3 ];
then
    echo "Cantidad errónea de argumentos"
    echo "El script requiere que ingreses los siguientes parámetros:  <operación> <operando 1> <operando2>"
    echo "Intentá de nuevo"
else
    if [[ "$1" == "+" || "$1" == "-" || "$1" == "*" || "$1" == "/" ]];
    then
        case $1 in
            "+")
                echo "$2 + $3 = $(expr $2 + $3)"
                ;;
            "-")
                echo "$2 - $3 = $(expr $2 - $3)"               
                ;;
            "*")
                echo "$2 * $3 = $(expr $2 \* $3)"
                ;;
            "/")
                echo "$2 / $3 = $(expr $2 / $3)"
                ;;
        esac
    else
        echo "$1 no es un operador válido. Intentá nuevamente."
    fi        
fi
