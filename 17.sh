#!/bin/sh

# Imprime el contenido del directorio actual, intercambiando
# las letras minúsculas por mayúsculas y elimina la letra a (mayúscula y minúscula)
echo "Listado de archivos: "
ls | tr [a-z] [A-Z] | tr -d "a" | tr -d "A" | cat
exit 0
