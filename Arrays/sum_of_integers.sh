#!/bin/bash -x
found="false"
for (( i=0; i<3; i++ ))
do
	read -p "Enter the number" num
	arr[i]=$num
done
echo ${arr[@]}
for (( c=0; c<$((3-2)); c++ ))
do
	for (( j=c+1; j<$((3-1)); j++ ))
	do
		for (( k=j+1; k<3; k++ ))
		do
			temp=$((${arr[c]}+${arr[j]}+${arr[k]}))
			if [ $temp -eq 0 ]
			then
				echo "Addition of "${arr[c]} ${arr[j]} ${arr[k]} "=" $temp
				found="true"
			fi
		done
	done
done

if [ $found == "false" ]
then
	echo "not exists"
fi
