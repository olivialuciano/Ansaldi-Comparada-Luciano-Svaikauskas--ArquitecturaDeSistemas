#!/bin/bash

probar="s"
while [ $probar == "s" ];
do
        rta="n"
        echo "ingrese la nota del 0 al 10"
        read nota
        if [ $nota -ge 0 ] && [ $nota -le 10 ];
        then
                if [ $nota -eq 10 ];
                then
                        echo "($nota) -> excelente"
                elif [ $nota -ge 7 ];
                then
                        echo "($nota) -> muy bien"
                elif [ $nota -ge 6 ];
                then
                        echo "($nota) -> aprobado"
                elif [ $nota -ge 4 ];
                then
                        echo "($nota) -> desaprobado"
                else
                        echo "($nota) -> aplazado"
                fi
        else
                echo "esa nota no existe. Querés probar de vuelta?(s/n)"
                read rta
        fi
        probar=$rta
done

