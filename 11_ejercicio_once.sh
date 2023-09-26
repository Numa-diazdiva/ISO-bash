# Se pueden declarar funciones de dos formas:

function pablito {
    echo hola Pabro
}

pabluki() {
    echo Pablinson
}

# Invoco a las funciones antes definidas
pablito
pabluki

# Ahora probamos funciones con parámetros
# Las funciones reciben argumentos en las variables pesos
function frase {
    if [ $1 -eq 4 ]
    then
	    echo "El hoy es la sombra del mañana"
    fi
}


read -p "Ingrese el código correcto para ver la frase: " cod
frase $cod
