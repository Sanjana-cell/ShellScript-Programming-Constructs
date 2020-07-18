#!/bin/bash 

#Constants
MIN_INCH_VALUE=12
LENGTH=60
WIDTH=40
MIN_ACRES=4047

#Varibales
area=0
total_area=0

#Code for feet to inch conversion
echo "FEET TO INCH CONVERION"	
read -p "Enter the value for feet conversion " feet
inch=$(($feet*$MIN_INCH_VALUE))
echo "Inch" $inch
echo "-------------------------"

#Code for acres calcution
echo "ACRES CALCULATION"
for (( counter=1; counter<=25; counter++ ))
do
	area=$(($LENGTH*$WIDTH))
	total_area=`expr $total_area + $area`

done
acres=$(($total_area/$MIN_ACRES))
echo "Total Acres of 25 plots=" $acres
	
