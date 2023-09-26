#!/bin/bash

# Estructura de pila

pila=()
opciones=(push pop lenght "print" "salir")

# Variable de entorno que toma la pila como prompt para display
PS3="Ingresá una opción para trabajar con la pila: "

function pushear {
    read -p "Ingrese el elemento a pushear: " elem
    pila[${#pila[@]}]=$elem
    echo "La pila ahora contiene los siguientes elementos -> ${pila[@]}" 
}

function pop {
    posicion=$(expr ${#pila[@]} - 1)
    unset pila[posicion]
    # Libero la memoria
    pila=(${pila[@]})
    echo "Ahora la pila se ve así -> ${pila[@]}"
}

select opcion in "${opciones[@]}"
do
    case $opcion in
        "push") pushear ;;
        "pop") pop ;;
        "lenght") echo "La pila tiene ${#pila[@]} elementos." ;;
        "print") echo "La pila contiene los siguientes elementos: ${pila[@]}" ;;
        "salir") echo "Saliendo..."; break ;; 
        *) echo "Opción no válida";;
    esac
done
exit 0 
