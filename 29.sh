#!bin/bash

# Guarda en un arreglo todos los archivos del directorio /home que terminen en .doc

# Chequea que no reciba parámetros
if [ $# -ne 0 ]; then
  echo "Se recibió un parámetro. No se debe recibir ninguno."
  exit 1
fi

# Chequea si el usuario tiene un directorio home
if [ ! -d $HOME ]; then
  echo "El usuario $whoami no tiene un directorio /home"
  exit 2
fi

ruta_base="$HOME/testej30"

# Buscar los archivos que terminen en .doc y los guarda en un arreglo
archivos=( $(find $ruta_base -name "*.doc") )
echo "Archivos encontrados: ${archivos[@]}"

# Retorna 0 si el archivo se encuentra en el arreglo, o 15 en caso contrario
function existeArchivo {

  if [ $# -ne $1 ]; then
    echo "Se debe enviar un nombre de archivo como parámetro"
    return 4
  fi
 
  for archivo in ${archivos[@]}; do
    if [ $archivo == "$ruta_base/$1" ]; then
      echo "Archivo $1 encontrado"
      return 0
    fi

  done
  return 5
}


# Recibe un nombre de archivo como parámetro en $1 e imprime
# su contenido, si es que existe
# Retorna: 5 si el archivo no está en el arreglo, 4 si hubo un error en el envío de parámetros
function verArchivo {
  if [ $# -ne 1 ]; then
    echo "Se debe enviar un nombre de archivo como parámetro"
    return 4
  fi

  existeArchivo $1
  if [ $? -ne 0 ]; then
    # guardar devoluci{on en una variable
    echo "error al buscar el archivo"
    return $?
  fi  
  # solo nombre? o con path también?
  cat "$ruta_base/$1"
  return 0
}

# Imprime la cantidad de archivos .doc encontrados y guardados en el arreglo
function cantidadDeArchivos {
  echo "La cantidad de archivos con terminación .doc es ${#archivos[@]}"
}

# Borra el archivo recibido como parámetro de forma lógica o física, dependiendo de la decisión del usuario
# En caso de no existir el archivo, devuelve el valor 10
# En caso de no recibir el parámetro adecuado, devuelve 4
function borrarArchivo {
  if [ $# -ne 1 ];then
    echo "Se debe enviar un nombre de archivo como parámetro"
    return 4
  fi
  existeArchivo $1
  if [ $? -ne 0 ]; then
    echo "Hubo un error al buscar el archivo"
    return 10
  fi
  
  echo "Desea borrar el archivo de forma lógica (si/no)?: "
  read opcion
   
  for (( i=0; i < ${#archivos[@]}; i++ ))
  do
    if [ $archivo == "$ruta_base/$1" ]; then
      unset archivos[$i]
      archivos=( ${archivos[@]} )
      break
    fi
  done
  
  if [ $opcion == "no" ]; then
    rm "$ruta_base/$1"
    if [ $? -ne 0 ]; then
      echo "Hubo un error al borrar"
    fi
  fi
  return 0
}

select opcion in "ver archivo" "cantidad de archivos" "borrar archivos"
do
  case $opcion in
   "ver archivo")
        echo "Introduzca el nombre del archivo a buscar: "
        read archivo
        verArchivo $archivo
        if [ $? -ne 0 ]; then
          echo "El archivo no se encontró en el arreglo de archivos del directorio home"
        fi
        break
    ;;
    "cantidad de archivos")
        cantidadDeArchivos
        break
    ;;
    "borrar archivos")
        echo "Introduzca el nombre del archivo a borrar: "
        read borrar
        borrarArchivo $borrar
        test $? -eq 0 && echo "Borrado exitoso"
        break
    ;;
  esac
done

exit 0
