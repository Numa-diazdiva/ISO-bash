#!/bin/bash

# Recibe un nombre de directorio

# Si no se ingresa el directorio como parámetro, el 
# script termina con código de error 3
if [ $# -ne 1 ]; then
  echo "Número incorrecto de parámetros. Tenés que ingresar 1 parámetro: <directorio>"
  exit 3
fi

# Si el directorio no existe, el script termina con código
# de error 4
if [ ! -d $1 ]; then
  echo "Directorio inválido"
  exit 4
fi

# Recorremos cada elemento del directorio
cantidad_lye=0
for elem in $(ls); do
  if [ -f $elem ] && [ -r $elem ] && [ -w $elem ]; then
    cantidad_lye=$(expr $cantidad_lye + 1)
  fi
done
echo "La cantidad de archivos en modo lectura y escritura para el usuario $whoami es de $cantidad_lye archivos."

exit 0
