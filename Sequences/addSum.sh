#!/bin/bash -x 

counter=0
sum=0
d1=0
while [ $counter -le 5 ]
do
 	d1=`shuf -i 10-99 -n 1`
	sum=`expr $sum + $d1`
	((counter++))
done
avg=$(($sum/$counter)) 
echo "Average = "$avg
echo "Sum = "$sum
