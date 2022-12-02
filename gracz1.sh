#!/bin/bash

while (( 1 ))
do
	if [ -f "komenda.txt" ]
	then
		komenda=$(cat komenda.txt)

		if [[ "$komenda" == *start* ]]
		then
			if [[ ! -f "los1.txt" ]]
			then
				los=$(( $RANDOM % 3 + 1 ))
				echo $los

				if (( $los == 1 ))
				then 
					echo "papier" > los1.txt
				fi
				
				if (( $los == 2 ))
				then 
					echo "kamień" > los1.txt
				fi

				if (( $los == 3 ))
				then 
					echo "nożyce" > los1.txt
				fi
			fi
		fi
		
		if [[ "$komenda" == *stop* ]]
		then
			exit
		fi
	fi
done
				

		
