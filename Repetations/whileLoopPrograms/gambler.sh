#!/bin/bash -x
stake=100
GOAL=200
bets=0
win=0
while [ $stake -gt 0 -o $stake -eq $GOAL ]
do
	bets=$(($bets + 1))
	random=$(($RANDOM%2))
	if [ $random -eq 1 ]
	then
		stake=$(($stake + 1))
		win=$(($win + 1))
	else
		stake=$(($stake - 1))
	fi
done
echo "No of times games won = "$win
echo "No of bets =" $bets

