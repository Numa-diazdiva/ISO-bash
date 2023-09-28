#!/bin/bash

# Informa la suma entre posiciones coincidentes de ambos vectores

vector1=( 1 80 65 35 2 12 6 )
vector2=( 5 98 3 51 8 19 )

longitud1=${#vector1[@]}
longitud2=${#vector2[@]}
valida=0

if [ $longitud1 -le $longitud2 ]; then
  valida=$longitud1
else
  valida=$longitud2
fi

for (( i=0 ; i < $valida; i++ )); do
  echo "Suma de elementos en pos $i: " $( expr ${vector1[$i]} + ${vector2[$i]})
done
