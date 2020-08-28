#!/bin/bash -x
reversenum=0
read -p "Enter an integer to check its palindrome "  pal
permanent=$((pal))
function palindrome() {
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
	echo "$permanent is a palindrome number"
else
	echo "$permanent is not a palindrome number "
fi
