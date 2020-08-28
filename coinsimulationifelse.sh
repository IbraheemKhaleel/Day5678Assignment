#!/bin/bash -x
read -p "How many times you are going to flip the coin  " flip
while [ $((i)) -le $((flip)) ]
do
	random=$((RANDOM%2))
	if [ $((random)) -eq 0 ]
	then
		echo “ The outcome is head “
	else
		echo “ The outcome is tail “
	fi
((i++))
done
