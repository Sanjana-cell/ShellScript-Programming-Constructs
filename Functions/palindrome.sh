#!/bin/bash -x
function isPalindrome(){
	divisor=1
	num=$1
	while [ $(($num/$divisor)) -ge 10 ]
	do
		divisor=$(($divisor*10))
	done
	while [ $num -ne 0 ]
	do
		leading=$(($num/$divisor)) 
		trailing=$(($num%10))
		if [ $leading != $trailing ]
		then
			return 0
		fi
		num=$((($num%divisor)/10))
		divisor=$(($divisor/100))
	done
	return 1
}
read -p "Enter the number " palin
if [ $palin -gt 9 ]
then
	isPalindrome $palin 
	result=$?
	if [ $result == 1 ]
	then
		echo "Yes, it is plaindrome"
	else
		echo "No, it NOT plaindrome"
	fi
else
	echo "Enter two or more digit number"
fi
