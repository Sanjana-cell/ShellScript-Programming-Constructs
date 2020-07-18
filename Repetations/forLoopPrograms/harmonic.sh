#!/bin/bash                                                                                                             
read -p "Enter the number" num                                                                                          
harmonic=1                                                                                                              
for (( i=2; i<=$num; i++ ))                                                                                             
do
	temp=$(echo "scale=2;1/$i" |bc)
	harmonic=$(echo "scale=2;$harmonic+$temp" |bc)
done 
echo $harmonic
