#!/bin/bash -x
read -p "Enter the number " num
temp=0
isPrime="true"
for ((  counter=2; counter<=$(($num/2)); counter++ ))
do
	temp=$(($num % $counter))
	if [ $temp == 0 ]
	then
		isPrime="false"
		break
	fi
done
if [ "$isPrime" == "true" ]
then
	echo $num "is a Prime Number"
else
	echo $num "is NOT Prime Number"
fi


