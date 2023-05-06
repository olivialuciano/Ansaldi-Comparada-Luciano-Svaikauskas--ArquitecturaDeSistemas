#!/bin/bash
echo 'ingrese los números que quiera menos el 999(salir): '
read num
until [ $num -eq 999 ]; do
        echo $num >> nros.txt
        read num
done
rta2='invalid'
while [ $rta2 == 'invalid' ]; do
        echo "querés ver los números introducidos?s/n"
        read rta
        rtaMay=$(echo $rta | tr '[:lower:]' '[:upper:]')
        if [ $rtaMay == 'S' ];
        then
                echo 'desea verlos en el orden: establecido(O), ascendente(A), descendente(D): '
                read rta2
                case $rta2 in
                        o|O) cat nros.txt;;
                        a|A) cat nros.txt | sort -n;;
                        d|D) cat nros.txt | sort -n -r;;
                        *) rta2="invalid";
                                echo 'opción inválida';;
                esac
        else
                break
        fi
done
rm nros.txt

