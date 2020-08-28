#!/bin/bash -x 
money=100
while [[ $((money)) -ne 0 && $((money)) -lt 200 ]]
do
	random=$((RANDOM%2))
	if [ $((random)) -eq 0 ]
	then
		echo "gambler wins "
		money=$((money+1))
	else
		echo "gambler loses "
		money=$((money-1))
	fi
done
if [ $((money)) -eq 0 ]
then
	echo "Gambler is broke "
else
	echo "Gambler has reached 200 target "
fi

