#!/bin/bash -x
primeFactors=" "
space=" "
count=0
read -p "Enter the number to print prime factors " num
echo "All prime factors of "$num 
for (( i=2; i<num; i++ ))
do
	if [ $(($num%$i)) == 0 ]
	then
		arr[((count))]=$i
		((count++))
	fi
done

echo ${arr[@]}
