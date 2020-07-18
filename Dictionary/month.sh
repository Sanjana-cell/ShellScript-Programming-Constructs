#!/bin/bash 
declare -i birthdayMonth
person=1
while [ $person -le 50 ]
do
	month=$(($RANDOM%12+1))
	birthdayMonth[$((person++))]=$month
done
echo "value"${birthdayMonth[person]}
for (( i=1; i<=50; i++ ))
do
	for (( j=i+1; j<=50; j++ ))
	do
		if [[ ${birthdayMonth[$i]} -eq ${birthdayMonth[$j]} ]]
        	then
                	echo "Person" $i "birth month is same as" $j
                	arr[$i]=${birthdayMonth[$i]}
        	fi
	done
done
echo ${birthdayMonth[@]}
echo ${!birthdayMonth[@]}
