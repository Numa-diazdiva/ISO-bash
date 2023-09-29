#!bin/bash

# Guarda en un arreglo todos los archivos del directorio /home que terminen en .doc

# Chequea si el usuario tiene un directorio home
if [ ! -d $HOME ]; then
  echo "El usuario $whoami no tiene un directorio /home"
  exit 1
fi

# Buscar los archivos que terminen en .doc y los guarda en un arreglo
archivos=( $(find -name "*.doc") )

for item in ${arreglo[@]}; do
  echo $item
done

select opcion in "ver archivo" "cantidad de archivos" "borrar archivos"
do
  case opcion in
   "ver archivo")
        echo "Introduzca el nombre del archivo a buscar: "
        read archivo
        ver_archivo $archivo
        if [ $0 -ne 0 ]; then
          echo "El archivo no se encontró en el arreglo de archivos del directorio home"
        fi
    ;;
    "cantidad de archivos")
        

done




exit 0
