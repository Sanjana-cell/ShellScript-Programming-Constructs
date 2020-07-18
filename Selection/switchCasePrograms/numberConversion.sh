#!/bin/bash -x
read -p "Enter the number(1,10,100,1000,10000,100000,1000000) " digi
case "$digi" in
        1) echo "UNIT" ;;
        10) echo "TEN" ;;
        100) echo "HUNDREDS" ;;
        1000) echo "THOUSHAND" ;;
        10000) echo "TEN THOUSAND" ;;
        100000) echo "LAKH" ;;
        100000) echo "TEN LAKH" ;;
        *) echo "Enter the number from 1 to 7" ;;
esac
