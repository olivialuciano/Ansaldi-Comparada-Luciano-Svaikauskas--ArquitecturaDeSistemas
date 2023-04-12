#EJERCICIO 8 :

echo "ingrese dos números:"
read n1
read n2
while [ -z "$n1" ] || [ -z "$n2" ];
do

        echo "Ud no ha ingresado ningún parámetro -> quiere introducirlos ahora?(s/n)"
        read rta1

        if [ $rta1 = "s" ];
        then
                echo "ingrese el primer nro: "
                read n1
                echo "Una vez ingresado el primer parámetro -> quiere introducir el otro número?(s/n)"
                read rta2
                if [ $rta2 = "s" ];
                then
                        echo"ingrese el segundo nro: "
                        read n2
                fi



        fi
        #echo "Una vez ingresado el primer parámetro -> quiere introducir el otro número?(s/n)"
        #read rta2

        #if [ $rta2 = "s" ];
        #then
        #       echo"ingrese el segundo nro: "
        #       read n2
        #fi
done


echo "la suma es: " $((n1 + n2))
echo "la resta es: " $((n1 - n2))
echo "la multiplicación es: " $((n1 * n2))
        
if [ $n2 -ne 0 ];
then
        echo "la división es: " $((n1 / n2))
else
        echo "no se puede hacer división porque el segundo parámetro es: "$n2
fi

