num=(10 3 5 7 9 3 5 4)

# Recibe un arreglo de números e imprime el resultado de la multiplicación de todos sus elementos
function productoria {
    # El $@ significa "Todos los argumentos de la línea de comandos"
    echo "Los parámetros que llegan son: $@"
    resultado=1
    for numero in $@
    do
        resultado=$(expr $resultado \* $numero)
    done
    echo "El resultado de la productoria es $resultado"
}

# Pasamos todos los elementos del arreglo como secuencia
productoria ${num[@]}
echo "El resultado de productoria es: $?"
exit 0
