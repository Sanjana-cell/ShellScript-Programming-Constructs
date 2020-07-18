#!/bin/bash -x
read -p "Enter the a value " a
read -p "Enter the b value " b
read -p "Enter the c value " c
result_1=$(($a + $b * $c))
result_2=$(($c + $a / $b))
result_3=$(($a % $b + $c))
result_4=$(($a * $b + $c))
max=0
min=0
if [ $result_1 -ge $result_2 -a $result_1 -ge $result_3 -a $result_1 -ge $result_4 ]
then
	echo $result_1 "is Maximum"
	max=$result_1
elif [ $result_2 -ge $result_1 -a $result_2 -ge $result_3 -a $result_2 -ge $result_4 ]
then
	echo $result_2 "is Maximum"
	max=$result_2
elif [ $result_3 -ge $result_1 -a $result_3 -ge $result_2 -a $result_3 -ge $result_4 ] 
then
	echo $result_3 "is Maximum"
	max=$result_3 
else
	echo $result_4 "is Maximum"
	max=$result_4 
fi
if [ $result_1  -le $result_2 -a $result_1 -le $result_3 -a $result_1 -le $result_4 ]
then
	echo $result_1 "is Minimum"
elif [ $result_2  -le $result_1 -a $result_2 -le $result_3 -a $result_2 -le $result_4 ]
then
	echo $result_2 "is Minimum"
elif [ $result_3  -le $result_1 -a $result_3 -le $result_2 -a $result_3 -le $result_4 ]
then
	echo $result_3 "is Minimum"
else
	echo $result_4 "is Minimum"
fi      

