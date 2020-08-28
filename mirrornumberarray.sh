#!/bin/bash -x
for((i=1;i<=100;i++))
do
	if [[ $((i/10)) -eq $((i%10)) ]]
	then
		mirror[$((i))]=$i
	fi
done
echo "The mirror numbers are ${mirror[@]} "
