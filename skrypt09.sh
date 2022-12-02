#!/bin/bash

wyraz=1
poprzednik=0

echo $1" wyrazów ciągu Fibonacciego:"
echo $wyraz

for (( i=1; $i<$1; i=$i+1 ))
do
	temp=$wyraz
	wyraz=`expr $wyraz + $poprzednik`
	echo $wyraz
	poprzednik=$temp
	
done

echo
