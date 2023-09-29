#!/bin/bash

# Provee funcionalidad para crear y modificar un arreglo

function inicializar {
  arreglo=()
}

# Agrega al final del arreglo el elemento recibido en $1
function agregar_elem {
  arreglo[${#arreglo[@]}]=$1
}

# Elimina el elemento ubicado en la posición pasada por parámetro en $1
# En caso de no existir dicha posición, imprime un mensaje de error
function eliminar_elem {
  if [ $1 -lt ${#arreglo[@]} ] && [ $1 -ge 0 ]; then
    echo "Eliminando..."
    unset arreglo[$1]
    arreglo=( ${arreglo[@]} )
  else
    echo "Posición no contenida en el arreglo"
  fi
}

# Imprime en pantalla la longitud actual del arreglo
function longitud {
  echo "La longitud del arreglo es de: ${#arreglo[@]} elementos"
}

# Imprime en pantalla todos los elementos del arreglo separados por salto de línea
function imprimir {
  echo "******Elementos del arreglo******"
  for elemento in ${arreglo[@]}; do 
    echo $elemento
  done
  # También puedo hacer un echo de la lista que develve el arreglo cuando le pedís todos los elem
}

# Recibe dos parámetos <longitud> y <valor>, en $1 y $2 respectivamente
# Crea un arreglo de longitud <longitud> y lo inicializa con <valor> en todas sus posiciones
function inicializar_con_valores {
  arreglo=()
  for (( i=0; i < $1; i++)); do
    arreglo[i]=$2
  done
}

inicializar
agregar_elem 1
agregar_elem 2
longitud
agregar_elem "tukenson"
eliminar_elem 0
inicializar_con_valores 6 tukensonss
imprimir

exit 0
