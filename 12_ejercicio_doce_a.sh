#!bin/bash

read -p "Ingrese un número: " numero1
read -p "Ingrese otro número: " numero2

echo el resultado de su suma es: `expr $numero1 + $numero2`
echo el resultado de su resta es: $(expr $numero1 - $numero2)
if test $numero1 -gt $numero2; then
	echo el número $numero1 es el más grande
else
	if test $numero2 -gt $numero1; then
		echo el número $numero2 es el más grande
	else
		echo los números son iguales
	fi
fi
