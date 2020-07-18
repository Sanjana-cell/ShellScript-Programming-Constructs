#!/bin/bash -x
read -p "Enter the Month " month
read -p "Enter the Day " day
if [ "$month" == "march" ]
then
	if [ $day -gt 20 -a $day -lt 31 ]
	then
		echo "true"
	else
		echo "false"
	fi
elif [ "$month" == "june" ]
then
	if [ $day -gt 0 -a $day -lt 20 ]
	then
		echo "true"
	else
		echo "false"
	fi
else
	echo "False"
fi
