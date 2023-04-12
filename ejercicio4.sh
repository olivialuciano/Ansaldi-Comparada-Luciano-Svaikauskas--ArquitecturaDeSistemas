#!/bin/bash
echo -n "Ingrese un archivo: "
read archivo
if [ -e $archivo ];then
	echo "El archivo" $archivo "existe"
	if [ -f $archivo ];then
		echo "Es un archivo normal"
	elif [ -s $archivo ];then
		echo "Este archivo NO tiene tamaño 0"
	elif [ -d $archivo ];then
		echo "Es un directorio"
	fi
	if [ -r $archivo ];then
		echo "Tiene permiso de lectura"
	elif [ -w $archivo ];then
		echo "Tiene permiso de escritura"
	elif [ -x $archivo ];then
		echo "Tiene permiso de ejecucion"
	fi
else
	echo "El archivo no existe"
fi
