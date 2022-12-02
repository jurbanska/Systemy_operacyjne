#!/bin/bash

gracz1=0
gracz2=0
remisy=0

for (( i=1; $i<=$1; i=$i+1))
do
	echo "start" > komenda.txt

	while (( 1 ))
	do
		if [ -f "los1.txt" ] && [ -f "los2.txt" ]
		then
			rm komenda.txt
			los1=$(cat los1.txt)
			los2=$(cat los2.txt)

		
			if [[ "$los1" == "kamień" ]]
			then
				if [[ "$los2" == "kamień" ]]
				then
					wynik="remis"
					remisy=`expr $remisy + 1`
				fi
				
				if [[ $los2 == "papier" ]]
				then
					wynik="wygrywa gracz 2"
					gracz2=`expr $gracz2 + 1`
				fi
				
				if [[ $los2 == "nożyce" ]]
				then
					wynik="wygrywa gracz 1"
					gracz1=`expr $gracz1 + 1`
				fi
			fi
			
			if [[ $los1 == "papier" ]]
			then
				if [[ $los2 == "papier" ]]
				then
					wynik="remis"
					remisy=`expr $remisy + 1`
				fi
				
				if [[ $los2 == "nożyce" ]]
				then
					wynik="wygrywa gracz 2"
					gracz2=`expr $gracz2 + 1`
				fi
				
				if [[ $los2 == "kamień" ]]
				then
					wynik="wygrywa gracz 1"
					gracz1=`expr $gracz1 + 1`
				fi
			fi
			
			if [[ $los1 == "nożyce" ]]
			then
				if [[ $los2 == "nożyce" ]]
				then
					wynik="remis"
					remisy=`expr $remisy + 1`
				fi
				
				if [[ $los2 == "kamień" ]]
				then
					wynik="wygrywa gracz 2"
					gracz2=`expr $gracz2 + 1`
				fi
				
				if [[ $los2 == "papier" ]]
				then
					wynik="wygrywa gracz 1"
					gracz1=`expr $gracz1 + 1`
				fi
			fi
			

			echo $wynik >> wyniki.txt
			rm los1.txt
			rm los2.txt

			break
		fi
	done
done

echo "Gracz 1 wygrał: " $gracz1 " , Gracz 2 wygrał: " $gracz2 " , Remis: " $remisy

echo "stop" > komenda.txt
