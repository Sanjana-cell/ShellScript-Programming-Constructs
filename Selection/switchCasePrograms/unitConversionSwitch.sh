#!/bin/bash 
choice="y"
echo "1. Feet to Inch Converion"
echo "2. Inch to Feet Converion" 
echo "3. Feet to Meter  Converion" 
echo "4. Meter to Feet Converion" 

while [ "$choice" == "y" ]
do 
	read -p "Enter the choice " select
	read -p "Enter the value to convert "  num
	case $select in
		1) result=$(( $num*12 ))
	   	   echo $result
	   	   ;;
		2) echo "scale=2; $num/12" | bc -l 
	   	   ;;
		3) echo "scale=2; $num/3" | bc -l
                   ;;
        	4) result=$(( $num*3 ))
	   	   echo $result
	   	   ;;	
		*) echo "Enter the choice from 1 to 4"
	esac
	read -p "Do you want to contuine (y/n)" choice
done

