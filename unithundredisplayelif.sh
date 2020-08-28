#!/bin/bash -x
read -p "Enter 1,10,100,10000,100000 " n
if [ $n == 1 ]
then
	echo "unit value is 1 "
elif [ $n == 10 ]
then
	a=$((n/10))
	b=$((n%10))
	echo " unit value is $b and tenth value $a "
elif [ $n == 100 ]
then
	a=$((n/100))
	b=$((n%100))
	echo " unit value is $b ,tenth value is $b and hundredth value is $a "
elif [ $n == 1000 ]
then
 a=$((n/1000))
 b=$((n%1000))
 echo " unit value is $b ,tenth value is $b , hundredth value is $b and thousand value is $a  "
elif [ $n == 10000 ]
then
 a=$((n/10000))
 b=$((n%10000))
 echo " unit value is $b ,tenth value is $b,hundredth value is $b,thousand value is $b and ten thousand value is $a "
elif [ $n == 100000 ]
then
 	a=$((n/100000))
   b=$((n%100000))
   echo " unit value is $b ,tenth value is $b,hundredth value is $b,thousand value is $b , ten thousand value is $b and one lakh value is $a "
else
	echo "Enter given number"
fi
