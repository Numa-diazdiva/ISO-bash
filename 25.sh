#!/bin/bash

# Script para imprimir los usuarios del grupo deseado
# La consigna pedía hacerlo con el grupo "users"

if [ $# -lt 2 ]; then
  echo "Cantidad errónea de argumentos, se requieren al menos 2: <grupo a consultar> <opción (-b + n | -l | -i)>"
  exit 1
fi

grupo=$1
opcion=$2

infogrupo=$( cat /etc/group | grep $grupo  )

if [ -z $infogrupo ]; then
  echo "El grupo buscado no existe"
  exit 2
fi

usuarios=($( echo $infogrupo | cut -d: -f4 | cut -d, -f1- --output-delimiter=' ' ))

case $opcion in
  "-b") if [ ! -z $3 ]; then
          if [ ! -z ${usuarios[$3]} ]; then
            echo "Usuario ${usuarios[$3]} en la posición $3"
          else
            echo "No existe un usuario en dicha posición de la lista"
            exit 3
          fi
        else
          echo "Falta un parámetro, tenés que indicar la posición de la lista de usuarios que querés consultar a continuación de -b"
          exit 4
        fi
    ;;
        
  "-l") echo "La cantidad de usuarios del grupo es de: ${#usuarios[@]}"
    ;;

  "-i") echo "****** lista de usuarios del grupo ******"
        for usuario in ${usuarios[@]}; do
          echo $usuario
        done
    ;;
   
  *) echo "Parámetro incorrecto. Las opciones son (-b + n | -l | -i)"; exit 5 ;;
esac

exit 0
