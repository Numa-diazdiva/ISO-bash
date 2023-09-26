# Podemos usar la opción -n para chequear si $1 o $2 están vacías
# O bien checar la cantidad de parámetros con $#
if [ $# -lt 2 ];
then
    echo "Tenés que ingresar al menos dos números como parámetros para utilizar el script"
    echo "Intentá de nuevo."
    exit 1
else
    echo "Los números ingresados son $1 y $2"
    echo el resultado de su suma es: `expr $1 + $2`
    echo el resultado de su resta es: $(expr $1 - $2)
    if test $1 -gt $2;
    then
	echo el número $1 es el más grande
    else
	if test $2 -gt $1;
	then
		echo el número $2 es el más grande
	else
		echo los números son iguales
    	fi
    fi
fi
