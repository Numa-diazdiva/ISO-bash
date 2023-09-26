#!/bin/bash
echo "Trabajo con comando expr"
read -p "Ingrese un valor a operar: " valor1
read -p "Ingrese el segundo operando: " valor2
echo "$valor1 + $valor2 = `expr $valor1 + $valor2`"
echo "Los valores son iguales ? : `expr $valor1 = $valor2`"
# Probando condicional
iguales="No son iguales"
if [ $valor1 -eq $valor2 ]
then
	iguales="Son iguales"
fi
echo $iguales
