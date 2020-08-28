#!/bin/bash -x
f=0
read -p " Enter a number " n
for (( i=2; i<$((n/2)); i++ )) 
do
	if [ $((n%i)) -eq 0 ]
	then
		f=1
	fi
done
if [ $((f)) -eq 0 ]
then
	echo " $n is a prime number "
else
	echo " It is  not a prime number "
fi

