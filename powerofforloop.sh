#!/bin/bash -x
power=1
read -p "Enter the maximum value to print power of 2  "  p
for ((i=1;i<=p;i++))
do
	power=$((power*2))
	arraypower[((i))]=$((power))
	
done
echo " The table of power 2 till $p is ${arraypower[@]} "
