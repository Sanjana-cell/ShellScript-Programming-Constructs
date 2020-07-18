#!/bin/bash -x
sum=0
n=0
for (( i=0; i<=100; i++ ))
do
	arr[i]=$i
	echo ${arr[@]}
done
for (( j=0; j<=100; j++ ))
do
	reversedN=0
	remainder=0
	n=${arr[j]}
	while [ $n != 0 ]
	do
	   remainder=$(($n%10))
           temp=`expr $reversedN \* 10`
           reversedN=`expr $temp + $remainder`
           n=$(($n/10))
	done
	echo $reversedN
	if [ ${arr[j]} -gt 9 -a ${arr[j]} == $reversedN ]
	then  
		arr_1[j]=$reversedN
	fi
done
echo ${arr_1[@]}
