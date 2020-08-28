#!/bin/bash -x
for((i=0;i<=2;i++))
do
	read -p "Enter a value " value
	integer[$i]=$((value))
done
echo " values are ${integer[@]} "
if [[ $((${integer[1]} + ${integer[2]} + ${integer[0]})) -eq 0 ]] 
then
	echo "sum is zero "
else
	echo " sum is not zero"
fi
