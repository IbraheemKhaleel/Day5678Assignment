#!/bin/bash -x
read -p "Enter an year to check leap year  " year
len=${#year}
if [ $len -ne 4 ]
then 
	echo " Enter a four digit number year  "
elif [[ $((year%4)) -eq 0 && $((year%100)) -ne 0 || $((year%400)) -eq 0 ]]
then
	echo " $year is a leap year "
else
	echo " $year is not a leap year "
fi
