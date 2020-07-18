#!/bin/bash -x
read -p "Enter the range value " range
num=0
primeNumbers=" "
space=" "
temp=0
for (( i=2; i<=$range; i++ ))
do
    if [ $(($range%$i)) -eq 0 ]
    then
	isPrime="true"
	for (( j=2; j<=$(($i/2)); j++ ))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			isPrime="false"
			break
		fi
	done
	if [ $isPrime == "true" ]
	then
		echo $i
		primeNumbers=$primeNumbers$space$i
	fi
     fi
done
echo $primeNumbers
echo $i
