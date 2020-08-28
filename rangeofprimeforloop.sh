#!/bin/bash  
read -p "Enter the range "  r
for (( i=1; i<=r;i++ ))
do
	fact=0
	for (( j=1;j<=r;j++ ))
	do
		if [ $((i%j)) -eq 0 ]
		then
			fact=$((fact+1))
		fi
	done
	if [ $((fact)) -eq 2 ]
	then
   array[i]=$i
	fi
done
echo "The prime numbers are ${array[@]} "
