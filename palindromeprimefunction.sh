#!/bin/bash -x
reversenum=0
read -p "Enter an integer to check its palindrome "  pal
permanent=$((pal))
function prime() 
{
local primeN=$1
echo $((primeN))
}
function palindrome() 
{
	local pali=$1
	echo $((pali))
}
while [ $((pal)) -ne 0 ]
do
	remainder=$((pal%10))
	reversenum=$((reversenum*10+remainder))
	pal=$((pal/10))
done
result="$( palindrome $reversenum )"
if [ $((result)) -eq $((permanent)) ]
then
	f=0
	echo "$permanent is a palindrome number"
	for (( i=2; i<$((permanent/2));i++ ))
	do
		if [ $((permanent%i)) -eq 0 ]
		then
			f=1
		fi
	done
	prim="$( prime $f )"
	if [ $((prim)) -eq 0 ]
	then
		echo "$permanent is a prime and palindrome number "
	else
		echo "$permanent is a palindrome number but not a prime number "
	fi
else
	echo " Its not a palindrome number "
fi
