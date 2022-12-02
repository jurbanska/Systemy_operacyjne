#!/bin/bash

reverse=""
parametry=($*)
liczba_parametrow=$#

for (( i=liczba_parametrow; $i>=1; i=$i-1 ))
do
	reverse="$reverse ${parametry[i-1]}"	
done
echo $reverse
