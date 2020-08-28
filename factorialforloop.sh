#!/bin/bash -x
read -p "Enter a number to find its factorial  "  f
number=$((f))
for (( i=$((f-1)); i>=1; i--))
do
	f=$((f*i))
done
echo " The factorial of the number $number is $f  "
