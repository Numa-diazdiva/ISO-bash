#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Se ingresó un número incorrecto de parámetros. Se debe ingresar 1 parámetro <extensión>"
    exit 1
fi

extension=$1
extensiones=$(ls | cut -d "." -f2)
cant_archivos=0

for extension_actual in $extensiones
do
    if [ $extension_actual == $extension ]; then
        cant_archivos=$(expr $cant_archivos + 1)
    fi
done

echo "$(whoami) : $cant_archivos" > "reporte.txt"
exit 0
