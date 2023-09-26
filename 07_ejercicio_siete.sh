# Para comparar integers, tenemos que usar los operadores relacionales -gt -eq -ne, etc
if [ 3 -gt 2 ]
then
	echo "tres mayor que dois"
fi

# Condicional forma corta en una línea
[ 3 -lt 1 ] && echo "Tres menor que uno" || echo "Tres mayor que uno"

# Comparar strings
if [ "uno" = "uno" ]
then
	echo "uno igual a uno"
else
	echo "uno no igual a uno"
fi
