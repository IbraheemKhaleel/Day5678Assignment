#!/bin/bash -x
h=0
t=0
while [[ $((h)) -ne 11 && $((t)) -ne 11 ]]
do
	random=$((RANDOM%2))
	if [ $((random)) -eq 0 ]
	then
		h=$((h+1))
		echo "head wins "
	elif [ $((random)) -eq 1 ]
	then
		t=$((t+1))
		echo "tail wins "
	fi
done
if [ $((h)) -eq 11 ]
then
	echo "head wins 11 times "
else
	echo "tail wins 11 times "
fi

