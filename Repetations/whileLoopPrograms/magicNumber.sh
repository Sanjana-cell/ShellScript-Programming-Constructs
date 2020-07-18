#!/bin/bash -x

num=1
for(( i=0 ;i<100; i++ ))
do
	a[i]=$num
	num=$(($num+1))
done

for(( i=1; i<100; i++ ))
do
	for(( j=0; j<100-i; j++))
	do
	if [ ${a[$j]} -gt ${a[$j+1]} ]
	then
		t=${a[$j]}
		a[$j]=${a[$j+1]}
	        a[$j+1]=$t
	fi
	done
done

echo "Sorted array is"
echo "${a[@]}"
first_index=0
c=0
last_index=$((100-1))

while [ $first_index -le $last_index ]
do
	mid=$(((( $first_index+$last_index ))/2 ))
	echo "IS YOUR MAGIC NUMBER IS "${a[mid]}
	read s
	if [ $s == "y" ]
	then
		c=1
		break
	fi
	echo "IS YOUR MAGIC NUMBER LESS THAN "${a[mid]}
	read s
	if [ $s == "y" ]
	then
		last_index=$(($mid-1))
	else
		first_index=$(($mid+1))
	fi
done

if [ $c -eq 1 ]
then
	echo ${a[mid]} "magic number found at position $(($mid+1))"

else
	echo "Element not found"

fi
