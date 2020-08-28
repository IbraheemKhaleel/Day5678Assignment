#!/bin/bash 
temp=0
for ((i=0;i<10;i++ ))
do
   array[i]=$((RANDOM%(999-100)+100))
done
echo "array list is " ${array[@]}
for((i=0; i < ${#array[@]}; i++))
do
	for((j=0;j<${#array[@]}-i-1;j++))
	do
  		if [[ ${array[j]} -gt ${array[$((j+1))]} ]]
  		then
   	temp=${array[j]}
		array[$j]=${array[$((j+1))]}
		array[$((j+1))]=$((temp))
  		fi
	done
done

echo "sorted array is ${array[@]}"
echo "The second greatest element is ${array[8]} and the second smallest element is ${array[1]} "

