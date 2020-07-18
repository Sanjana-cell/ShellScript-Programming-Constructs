#!/bin/bash -x

function celcius () {
 	if [ $1 -ge 0 -a $1 -le 100 ]
	then
		degF=$(echo "scale=2;((9/5) * $1) + 32" |bc)
		#degF=`expr "$degF + 0" | bc`   
	else
		degF=0
	fi
	echo $degF
}
function fahrenheit () {     
	if [ $1 -ge 32  -a  $1 -lt 212 ]
	then   
		degC=$(echo "scale=2;(5/9)*($1-32)" |bc)
	else
		degC=0
	fi
	echo $degC
}
echo  "1. Celcius to Fahrenheit"
echo  "2. Faherenheit to Celcius"
echo -n "Select your choice (1-2)"
read choice
case $choice in
	1) read -p "Enter temperature (c) : " celcius
	   degF="$( celcius $celcius)"
	   echo $degF " F"
	   ;;
	2) read -p "Enter temperature (F) : " fahren
	   degC="$(fahrenheit $fahren)"
	   echo $degC " C"
	    ;;
	*) echo "Wrong choice"
esac
