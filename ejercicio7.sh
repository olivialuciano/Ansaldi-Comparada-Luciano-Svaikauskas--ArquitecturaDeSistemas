#!/bin/bash
echo "Ingrese la primera cadena de texto: "
read cad1
echo "Ingrese la segunda cadena de texto: "
read cad2
if [ -z "$cad1" || -z "$cad2" ]
then 
	echo Una de las cadenas o ambas esta vacia
else
	echo Ninguna cadena esta vacia 
fi
if [ $cad1 = $cad2 ]
then 
	echo Las cadenas son iguales
else 
	echo Las cadenas no son iguales
fi





























