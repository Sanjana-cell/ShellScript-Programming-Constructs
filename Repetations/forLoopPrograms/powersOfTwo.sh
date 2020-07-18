#!/bin/bash 
read -p "Enter  the exponent value " exponent
BASE=2
result=1
echo $result "*" $BASE
for (( counter=1; counter<=$exponent; counter++ ))
do
	result=$(($result*$BASE))
	echo $BASE "*" $result
done
