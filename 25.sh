#!/bin/bash

# Scripts para imprimir los usuarios del grupo deseado
# La consigna pedía hacerlo con el grupo "users", pero no tengo gente en ese grupo por ahora jeje

if [ $# -lt 2 ]; then
    echo "Cantidad errónea de argumentos, se requieren al menos 2: <grupo a consultar> <opción (-b + n | -l -i)>"

grupo=$1
opcion=$2

case opcion in
    "-b") if [ ! -z $3 ]; then
                if [ ! -z ${usuarios[$3]} ]; then
                    echo "Usuario ${usuarios[$3] en la posicion $3.}"
                else
                    echo "No existe un usuario en dicha posición de la lista"
                    exit 0
                fi
          else
                echo "Falta un parámetro, tenés que indicar la posición de la lista de usuarios que querés consultar a continuación -b"
          fi
          ;;
        
    "-l") echo "La cantidad de usuarios del grupo es de: ${#usuarios[@]}"

