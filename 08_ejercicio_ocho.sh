#!/bin/bash
# Case

read -p "Ingresá un número del 1 al 9: " opcion

# Los casos van separados sí o sí por ;;
case $opcion in
	1)
		echo "opcion uno"
		;;
	2)
		echo "opcion dois"
		;;
	3)
		echo "opcion tres"
		;;

	4)
		echo "qué hacés mostro"
		;;
	5)
		echo "opción cinco"
		;;
esac	

# While
read -p "Ingresá una cantidad de veces que querés iterar: " limite
i=1
while [ $i -le $limite ]
do
	echo "Iteración con while número $i"
	i=`expr $i + 1`
done

# For
echo "Ahora iteramos con for"
for item in 1 dos tres 4 5 seis;
do
	echo $item
done

select vermu in Carpano Cinzano Lunfa
do
	echo "Elegiste $vermu"
	break
done
