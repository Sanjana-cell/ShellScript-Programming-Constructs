#!/bin/bash -x
primeFactors=" "
space=" "
read -p "Enter the number to print prime factors " num
echo "All prime factors of "$num 
for (( i=2; i<num; i++ ))
do
	if [ $(($num%$i)) == 0 ]
	then
		echo $i
		primeFactors=$primeFactors$space$i
	fi
done

echo $primeFactors
