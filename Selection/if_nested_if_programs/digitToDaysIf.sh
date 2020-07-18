#!/bin/bash -x
read -p "Enter the single(1-7) digit number " s
if [ "$s" -ge 1 -a "$s" -le 7 ]
then
	if [ "$s" -eq 1 ]
	then
        	echo "SUNDAY"
	elif [ "$s" -eq 2 ]
	then
        	echo "MONDAY"
	elif [ "$s" -eq 3 ]
	then
        	echo "TUESDAY"
	elif [ "$s" -eq 4 ]
	then
        	echo "WEDNESDAY"
	elif [ "$s" -eq 5 ]
	then
        	echo "THURSDAY"
	elif [ "$s" -eq 6 ]
	then
        	echo "FRIDAY"
	else
        	echo "SATURDAY"
	fi
else
	echo "Enter number from 1 to 7"
fi
