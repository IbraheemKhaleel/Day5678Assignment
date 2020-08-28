#!/bin/bash -x
answer=1
i=1
read -p "Enter a number " n
while [ $((answer)) -lt 256 ] && [ $((i)) -le $((n)) ]
do
	answer=$((answer*2))
	((i++))
done
echo " the power of 2 to the power of $n equals $answer "
