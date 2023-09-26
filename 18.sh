#!/bin/bash

# Verifica si el usuario pasado por parámetro se ha logueado en el sistema

if [ $# -ne 1 ]; then
    echo "Número incorrecto de parámetros. Se requiere <nombre de usuario>"
    exit 1
fi

usuario_buscado=$1
while true
do  
    logueado=false
    for usuario in $(users)
    do
        if [ $usuario == $usuario_buscado ]; then
            logueado=true
        fi    
    done
    # El bloque de arriba podría ser un while

    if $logueado ; then
        echo "El usuario $usuario_buscado se encuentra logueado en el sistema"
    else
        echo "El usuario buscado no se encuentra logueado en el sistema"
    fi

    sleep 10
done    

exit 0
