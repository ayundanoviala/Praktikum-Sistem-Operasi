#!/bin/bash

echo "Masukkan Angka :"
read bts
echo "Hitung"

i=1

while [ $a -le $bts]
do
        if [[ 0 -eq "($i%3) + ($i%5)" ]]
        then 
        echo "Fizz Buzz"
        elif [[ 0 -eq "($i%5)" ]]
        then 
        echo "Buzz"
        elif [[ 0 -eq "($i%3)" ]]
        then
        echo "Fizz"

        else
        echo "$i"
        fi
        a=$(( $i + 1 ))
done

