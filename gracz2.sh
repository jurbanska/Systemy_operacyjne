#!/bin/bash

while (( 1 ))
do
	if [ -f "komenda.txt" ]
	then
		komenda=$(cat komenda.txt)

		if [[ "$komenda" == *start* ]]
		then
			if [[ ! -f "los2.txt" ]]
			then
				los=$(( $RANDOM % 3 + 1 ))
				echo $los

				if (( $los == 1 ))
				then 
					echo "papier" > los2.txt
				fi
				
				if (( $los == 2 ))
				then 
					echo "kamień" > los2.txt
				fi

				if (( $los == 3 ))
				then 
					echo "nożyce" > los2.txt
				fi
			fi
		fi
		
		if [[ "$komenda" == *stop* ]]
		then
			exit
		fi
	fi
done
				

		
