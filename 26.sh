#!/bin/bash 

# Recibe una cantidad variable de rutas como parámetros y, para aquellos parámetros impares, determina si
# la ruta especificada existe. Además, indica si se trata de un archivo o de un directorio

# Chequeo si se recibe al menos un parámetro
if [ $# -lt 1 ]; then
  echo "Cantidad errónea de parámetros, ingrese al menos 1 ruta."
  exit 1
fi

indice=1

# Recorro la lista de parámetros contenida en $@, manteniendo un índice para determinar si son pares o no
for ruta in $@
do
  if [ $(expr $indice % 2) -ne 0 ]; then
    imprimir="La ruta $ruta no existe"
    # Si la ruta existe, evalúo si es un archivo, un directorio, o ninguno de los dos
    if [ -e $ruta ]; then
      imprimir="La ruta $ruta existe"
      if [ -f $ruta ]; then
        imprimir="$imprimir y es un archivo"
      elif [ -d $ruta ]; then
        imprimir="$imprimir y es un directorio"
      else
        imprimir="$imprimir y no es ni un archivo ni un directorio"
      fi  
    fi
    echo $imprimir
  fi
  indice=$(expr $indice + 1)
done
