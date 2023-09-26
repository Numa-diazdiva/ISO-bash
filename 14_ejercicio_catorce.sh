#!/bin/bash

# parámetros: <directorio> <-opción> <cadena>
# Rescato los parámetros para poder luego enviar parámetros a la funcióny no pisarlos
cantidad_parametros=$#
directorio=$1
opcion=$2
cadena=$3

# Recorre un directorio y renombra sus archivos agregando una cadena pasada por parámetro
# Recibe: <directorio> <cadena> <opción -f (final) / -p (principio)>
function renombrar {
    for archivo in `ls $1`; do

         if [ -f "$1/$archivo" ]; then
            if [ $3 == "-f" ]; then
                mv "$1/$archivo" "$1/$archivo$2"
            elif [ $3 == "-p" ]; then
                mv "$1/$archivo" "$1/$2$archivo"
            fi
         fi
    done
}

if [ $cantidad_parametros -lt 3 ]; then
    echo "Ingrese al menos tres parámetros: <directorio> -<opcion(a/b)> <cadena>"
    exit 1
else
 
    case $opcion in
        "-a")  renombrar $directorio $cadena "-f" ;;
        "-b")  renombrar $directorio $cadena "-p" ;;
        *) echo "opción incorrecta: $opcion. Las opciones son: '-a' '-b'" ;;
    esac
fi    
