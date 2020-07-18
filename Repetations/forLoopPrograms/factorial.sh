#!/bin/bash -x
read -p "Enter the number to find it's factorial " num
factorial=1
for (( i=1; i<=$num; i++ ))
do
	factorial=$(($i * $factorial))
	
done
echo "Factorial of "$num "= "$factorial
