#!/bin/bash

# Provee funcionalidad para crear y modificar un arreglo

function inicializar {
  arreglo=()
}

# Agrega al final del arreglo el elemento recibido en $1
function agregar_elem {
  arreglo[${#arreglo[@]}]=$1
}

function eliminar_elem {
  if [ $1 -lt ${#arreglo[@]} ] && [ $1 -ge 0 ]; then
    echo "Eliminando..."
    unset arreglo[$1]
    arreglo=( ${arreglo[@]} )
  else
    echo "Posición no contenida en el arreglo"
  fi
}


inicializar
agregar_elem 1
agregar_elem 2
agregar_elem "tukenson"
eliminar_elem 0
echo ${arreglo[@]}

exit 0
