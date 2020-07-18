#!/bin/bash -x
function isPalindrome(){
	reverse=0
	num=$1
	while [ $num -ne 0 ]
	do
		digit=$(($num%10))
		reverse=$(($reverse*10+$digit))
		num=$(($num/10))
	done
	if [ $1 -eq $reverse ]
	then
		return 1
	else
		return 0
	fi
}
function isPrime(){
num=$1
temp=0
for ((  counter=2; counter<=$(($num/2)); counter++ ))
do
        temp=$(($num % $counter))
        if [ $temp == 0 ]
        then
                return 0
                break
        fi
done
return 1

}
read -p "Enter the number " prime
if [ $prime -gt 9 ]
then
	isPrime $prime 
	result_1=$?
	isPalindrome $prime
	result_2=$?
	if [ $result_1 -eq 1 ]
	then
		if [ $result_2 -eq 1 ]
		then
			echo "Yes, it is prime and it is plaindrome"
		else
			echo "Yes, it is prime and it is NOT plaindrome"
		fi
	else
		if [ $result_1 -eq 0 -a $result_2 -eq 1 ]
		then
			echo "No, it is Not prime and it is plaindrome" 
		else
			echo "No, it is NOT prime and it is NOT plaindrome"
		fi
        fi 
else
	echo "Enter two or more digit number"
fi

