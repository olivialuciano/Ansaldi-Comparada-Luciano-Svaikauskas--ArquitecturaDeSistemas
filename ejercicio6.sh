#!/bin/bash
intentos=1
quedan=3
while [ $quedan -gt 0 ];do
	echo 2+2?
	read resultado
	if [ $resultado -eq 4 ];then
		echo "El resultado es correcto"
		break
	else
		quedan=$(($quedan-1))
		if [ $quedan -ne 0 ];then
			echo "Te quedan $quedan intentos"
		fi
		intentos=$(($intentos+1))
	fi
done
