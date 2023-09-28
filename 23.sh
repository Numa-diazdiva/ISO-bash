#!/bin/bash
arreglo=(1 3 7 8 11)
impares=0

for numero in ${arreglo[@]}
do
    modulo=$(expr $numero % 2)
    if [ $modulo -eq 0 ]; then
        impares=$(expr $impares + 1)
    else
        echo "$numero no es par"
    fi
done

echo "La cantidad de impares es $impares"

exit 0

