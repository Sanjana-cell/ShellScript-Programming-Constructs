#!/bin/bash -x
read -p "Enter the single digit number " s
if [ "$s" -eq 0 ]
then
	echo "ZERO"
elif [ "$s" -eq 1 ]
then
 	echo "ONE"
elif [ "$s" -eq 2 ]
then 
	echo "TWO"
elif [ "$s" -eq 3 ]
then
        echo "THREE"
elif [ "$s" -eq 4 ]
then
        echo "FOUR"
elif [ "$s" -eq 5 ]
then
        echo "FIVE"
elif [ "$s" -eq 6 ]
then
        echo "SIX"
elif [ "$s" -eq 7 ]
then
        echo "SEVEN"
elif [ "$s" -eq 8 ]
then
        echo "EIGHT"
elif [ "$s" -eq 9 ]
then
        echo "NINE"
else
	echo "Enter number from 0 to 9"
fi

