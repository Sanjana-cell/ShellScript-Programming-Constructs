#!/bin/bash -x
d1=$(($RANDOM%6+1))
d2=$(($RANDOM%6+1))
result=`expr $d1 + $d2`
echo "Addition of Random number = " $result
