#!/bin/bash

echo "Przy użyciu operatora:"

potega=$(( $1 ** $2 ))
echo $1 "^" $2 "=" $potega
echo


echo "Przy użyciu pętli:"

liczba_pot=$1
for (( i=1; $i<$2; i=$i+1 ))
do
	liczba_pot=`expr $liczba_pot \* $1`
done
echo $1 "^" $2 "=" $liczba_pot

