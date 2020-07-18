#!/bin/bash -x
temp=0
for (( i=0; i<10; i++ ))
do
	random=`shuf -i 100-999 -n 1`
	arr[$i]=$random
	echo ${arr[@]}	
	
done
for (( i=0; i<10; i++ ))
do
	for(( j=i+1; j<10; j++ ))
	do
		if [ ${arr[i]} -lt ${arr[j]} ]
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done
echo "The numbers arranged in descending order are given below"
echo ${arr[@]}
echo "The 2nd largest number is =" ${arr[1]}
echo "The 2nd smallest number is = " ${arr[8]}
