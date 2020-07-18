#!/bin/bash -x
declare -i dice
dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0
n=0
temp=0
while [ $n -lt 10 ]
do
	random=$(($RANDOM%6+1))
	case "$random" in
        1)  ((n++))
	    dice[1]=$n 
	    ;;
        2)  ((n++)) 
	    dice[2]=$n   
	    ;;
        3)  ((n++)) 
	    dice[3]=$n   
	    ;;
        4)  ((n++))  
	   dice[4]=$n   
	   ;;
	5) ((n++)) 
	   dice[5]=$n   
	    ;;
	6) ((n++)) 
	   dice[6]=$n
	    ;;
	esac
done
echo ${dice[@]}
max=${dice[1]}
min=${dice[1]}
for (( i=1; i<=6; i++ ))
do
	if [ ${dice[i]} -ge $max ]
	then
		max=${dice[i]}
	fi
	if [ ${dice[i]} -lt $min ]
        then
                min=${dice[i]}
        fi  
done
case $max in
	${dice[1]}) echo "1 as reached max of time";;
	 ${dice[2]}) echo "2 as reached max of time";;
	 ${dice[3]}) echo "3 as reached max of time";;
	 ${dice[4]}) echo "4 as reached max of time";;
	 ${dice[5]}) echo "5 as reached max of time";;
	 *) echo "6 as reached max of time";;
esac 
case $min in
        ${dice[1]}) echo "1 as reached min of time";;
         ${dice[2]}) echo "2 as reached min of time";;
         ${dice[3]}) echo "3 as reached min of time";;
         ${dice[4]}) echo "4 as reached min of time";;
         ${dice[5]}) echo "5 as reached min of time";;
         *) echo "6 as reached min of time";;
esac
