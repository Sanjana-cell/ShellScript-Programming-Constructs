#!/bin/bash -x
for (( i=0; i<10; i++ ))
do
	random=`shuf -i 100-999 -n 1`
	arr[$i]=$random
	echo ${arr[@]}	
	
done
smallest=${arr[0]}
largest=${arr[0]}
for (( i=0; i<10; i++ ))
do
	if [ ${arr[i]} -lt $smallest ]
	then
		smallest=${arr[i]}
	fi
	if [ ${arr[i]} -gt $largest ]
	then
		largest=${arr[i]}
	fi
done 
secondSmallest=${arr[0]}
secondLargest=${arr[0]}
for (( i=0; i<10; i++ ))
do
	if [ ${arr[i]} -lt $secondSmallest -a ${arr[i]} -ne $smallest ] 
	then
		secondSmallest=${arr[i]}
	fi

	if  [ ${arr[i]} -gt $secondLargest -a ${arr[i]} -ne $largest ]   
	then
		secondLargest=${arr[i]}
	fi
done
echo $secondSmallest
echo $secondLargest
echo ${arr[@]}
