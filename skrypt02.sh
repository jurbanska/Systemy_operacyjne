#!/bin/bash

losowa=$(( $RANDOM %$(($2-$1+1)) + $1))
echo "Masz łącznie 5 prób"

for i in {1..5}
do
	echo "Podaj liczbę: "
        read liczba

        if [ $liczba -eq $losowa ];
        then
                echo "Poprawna odpowiedź!"
                exit 1
        else
                if [ $((5-$i)) -eq 0 ];
                then
                        continue
                fi

		if [ $liczba -gt $losowa ]
                then
                        echo "Spróbuj mniejszą liczbę"
                else
                        echo "Spróbuj większą liczbę"
                fi
        fi
done
echo "Nie udało się. Poprawna liczba to: $num"
