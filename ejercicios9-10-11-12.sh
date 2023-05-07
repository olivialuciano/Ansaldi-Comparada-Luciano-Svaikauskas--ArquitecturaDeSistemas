#!/bin/bash
#EJERCICIOS 9, 10, 11 Y 12 CORRELATIVOS
#EJERCICIO9
echo "quiere hacer el ejercicio 9?"
read rta9
if [ $rta9 == "s" ] || [ $rta9 == "S" ];
then
	cd /home/olivia/Desktop
	mkdir carpetaEj9
	cd /home/olivia/Desktop/carpetaEj9
	for i in {1..40}; do
		touch "archivoEj9-"$i".txt"  
	done
	for i in {1..2}; do
		mkdir "directorioEj9-"$i
	done
	echo "Listo. Ya se crearon los 40 archivos .txt y los 2 directorios en la carpeta 'carpetaEj9' del escritorio"
fi

#EJERCICIO10
echo "quiere seguir por el ejercicio 10?"
read rta10
if [ $rta10 == "s" ] || [ $rta10 == "S" ];
then
	cd /home/olivia/Desktop/carpetaEj9
	gzip archivoEj9-25.txt
	gzip archivoEj9-29.txt
fi
echo "listo el ejercicio 10!! se han comprimido con gzip los archivos 25 y 29."


#EJERCICIO11
echo "quiere seguir por el ejercicio 11?"
read rta11
if [ $rta11 == "s" ] || [ $rta11 == "S" ];
then
	cd /home/olivia/Desktop/carpetaEj9
	for i in {1..40}; do
		arch="archivoEj9-"$i".txt"
		n="3"
		if [[ "$arch" == *"$n"* ]]; then
			mv -- "$arch" "${arch%.txt}.md"
		fi
	done
fi
echo "listo el ejercicio 11!! se ha cambiado la extensión de los 
archivos que contienen un 3 en su nombre de .txt a .md"

#EJERCICIO12
echo "quiere seguir por el ejercicio 12?"
read rta12
if [ $rta12 == "s" ] || [ $rta12 == "S" ];
then
	cd /home/olivia/Desktop
	mkdir carpetaEj12
	echo "carpeta nueva creada. Aquí se copiaran los archivos de la otra carpeta."
	for i in /home/olivia/Desktop/carpetaEj9/* ; do
		if [ -f $i ] ; #comprobar q sea un file -f 
		then
			cp $i /home/olivia/Desktop/carpetaEj12
		fi
	done
	echo "ya se copiaron los archivos a la otra carpeta."
fi

#ELIMINAR LO CREADO EN LOS EJERCICIOS:
echo "desea eliminarlo?(s/n)"
read rtaRM
if [ $rtaRM == "s" ] || [ $rtaRM == "S" ];
then
	cd /home/olivia/Desktop
	rm -r carpetaEj9
	echo "eliminada la carpeta carpetaEj9"
	rm -r carpetaEj12
	echo "eliminada la carpeta carpetaEj12"
fi


