#!/bin/bash

# Menú amigable para ejecutar los distintos scripts ubicados en la carpeta

lista_archivos=$(find -name "*.sh" | cut -d "/" -f2 | cut -d "." -f1)

echo "MENÚ DE SCRIPTS PARA EJECUTAR"
echo "Seleccione el número de script deseado, o cualquier otro caracter para salir"
select opcion in $lista_archivos
do
    if [ ! -z $opcion ]; then
        bash "${opcion}.sh"
    else
        echo "saliendo..."
        break
    fi
done
exit 0
