#!/bin/bash -x

#variables
limit=0
temp=0
length=0

#While loop to generate 5 three digit number and store it in arrays
while [ $limit -le 5 ]
do
	num=`shuf -i 100-990 -n 1`
	arr[((limit))]=$num
	((limit++))
done

#Assigning length of an array to length variable
length=${#arr[@]}

#For loop to sort the array in descending order to find max and min number
for (( i=0; i<$length; i++ ))
do
	for (( j=i+1; j<$length; j++ ))
	do
		if [ ${arr[i]} -gt ${arr[j]} ]
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done

#echo array elements
echo ${arr[@]}

#echo the maxium number in array
echo "Maximum="${arr[0]}

#echo the minimum number in array
echo "Minimum="${arr[$length-1]}
