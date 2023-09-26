#!/bin/bash

# Testeo del funcionamiento del comando cut
echo "Comando cut con archivo de películas y directorxs"
echo "El contenido del archivo es el siguiente: "
cat 15_data.csv

# Puedo imprimir algunas columnas utilizando delimitadores (-d) y especificación de columnas (-f)
echo "****************"
echo "Uso delimitadores para mostrar solo los títulos de las películas"
cut -d "," -f2 15_data.csv
echo "****************"
echo "O solo lxs directorxs: "
cut -d "," -f1 15_data.csv

exit 0
