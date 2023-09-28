#!/bin/bash

# Debería poder recuperar la información de usuarios del archivo passwd

if [ $# -ne 1 ]; then
    echo "Se ingresó un número incorrecto de parámetros. Se debe ingresar 1 parámetro <extensión>"
    exit 1
fi

extension=$1
data_usuarios=$(cat /etc/passwd | cut -d ":" -f 1,6)
echo -n > reporte.txt # Inicio el archivo sin nada por si ya existía

for usuario in $data_usuarios; do
    usr=$(echo $usuario | cut -d: -f1)
    home_dir=$(echo $usuario | cut -d: -f2)
   
    echo $usr $home_dir 
    # Checamos que no tenga un directorio que no existe (pasa con algunos users sin home)
    if [ -d $home_dir ]; then
        echo $usr $(find "$home_dir" -name "*.$1" | wc -l) >> reporte.txt
    fi
done
exit 0
