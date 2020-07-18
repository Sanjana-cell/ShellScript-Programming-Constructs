#!/bin/bash -x
read -p "Enter the single digit number(1-7) " digi
case "$digi" in
        1) echo "SUNDAY" ;;
        2) echo "MONDAY" ;;
        3) echo "TUESDAY" ;;
        4) echo "WEDNESDAY" ;;
        5) echo "THURSDAY" ;;
        6) echo "FRIDAY" ;;
        7) echo "SATURDAY" ;;
        *) echo "Enter the number from 1 to 7" ;;
esac
