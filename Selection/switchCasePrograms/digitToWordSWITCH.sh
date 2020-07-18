#!/bin/bash -x
read -p "Enter the single digit number(0-9) " digi
case "$digi" in
	0) echo "ZERO" ;;
	1) echo "ONE" ;;
	2) echo "TWO" ;;
	3) echo "THREE" ;;
	4) echo "Four" ;;
	5) echo "FIVE" ;;
	6) echo "SIX" ;;
	7) echo "SEVEN" ;;
	8) echo "EIGHT" ;;
	9) echo "NINE" ;;
	*) echo "Enter the number from 0 to 9" ;;
esac
