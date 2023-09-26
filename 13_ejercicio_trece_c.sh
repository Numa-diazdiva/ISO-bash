#!/bin/bash

if  [ $# -ne 1 ];
then
    echo "Tenés que ingresar un solo parámetro que contenga el nombre del archivo que querés comprobar"
else
    path_local=$(find $1)
    if [ $path_local ];
    then
        que_es="cuadrapop"
        if [ -f $1 ]; then
            que_es="archivo"
        elif [ -d $1 ]; then
            que_es="directorio"
        fi  
        echo "El archivo buscado existe y es un $que_es"
    else
        echo "El archivo buscado no existe, creando el directorio '$1'..."
        mkdir $1
    fi
fi
