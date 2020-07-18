#!/bin/bash -x
counter=0
total_heads = 0
total_tails = 0
while [ $counter -lt 11 ]
do
        random=$(($RANDOM%2))
        if [ $random -eq 1 ]
        then
                echo "HEADS"
                counter=$(($counter + 1))
  		total_heads=$counter
	else
		echo "TAILS"
		counter=$(($counter + 1))
		total_tails=$counter
        fi
done
if [ $total_heads -eq 11 ]
then
	echo $total_heads
	echo "HEAD WINS"
else
	echo $total_tails
	echo "TAIL WINS"
fi

