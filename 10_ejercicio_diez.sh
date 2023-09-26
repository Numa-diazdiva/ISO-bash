# Shell script no es fuertemente tipado, de hecho las variables son de tipo dinámico
# Se pueden definir arreglos, que son secuencias de valores

arreglo_vacio=()
arreglo_concosas=(matute 2 wilkenson tukenson)

echo ${arreglo_concosas[2]}
echo ${arreglo_concosas[*]}
echo tamanio del arreglo: ${#arreglo_concosas[*]}
