#!bin/bash

select opcion in "listar" "donde estoy" "quien esta"
do
    case $opcion in
	"listar")
	    ls
	    break
	    ;;
	"donde estoy")
	    # Si es con echo, uso reemplazo de comandos, sino no hace falta.
	    echo $(pwd)
    	    break
	    ;;
	"quien esta")
    	    echo "Los usuarios conectados en el sistema son: $(users)"
	    echo "Detalles: "
	    who # otro comando posible y más detallado es "w"
	    break
	    ;;
	*)
    	   echo "opción incorrecta, ingresar otra"
    esac
done
