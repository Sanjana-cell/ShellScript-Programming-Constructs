#!/bin/bash -x
read -p "Enter the number(1,10,100,1000,10000) " s
if [ "$s" -eq 1 ]
then
    echo "UNIT PLACE"
elif [ "$s" -eq 10 ]
then
    echo "TENS"
elif [ "$s" -eq 100 ]
then
    echo "HUNDERDS"
elif [ "$s" -eq 1000 ]
then
    echo "THOUSANDS"
elif [ "$s" -eq 10000 ]
then
    echo "TEN THOUSAND"
elif [ "$s" -eq 100000 ]
then
   echo "LAKH"
elif [ "$s" -eq 1000000 ]
then
   echo "TEN LAKH"
elif [ "$s" -eq 10000000 ]
then
   echo "CORE"
else
        echo "Enter number like 1,10,100,1000,10000,100000,1000000,10000000"
fi

