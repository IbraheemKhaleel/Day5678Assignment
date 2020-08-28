#!/bin/bash 
k=0
read -p "Enter a number " input
if [ $((input)) -lt 1 ]
then
echo "not allowed!"
exit 
fi
count=0
flag=0
	for ((i=2;i<$input;i++))
	do
    	if [ $((input % $i)) -eq 0 ]
		then
			factor=$i
  			for ((j=2;j<=$((factor / 2));j++))
			do
      		flag=0
      		if [ $((factor%j)) -eq 0 ]
				then
      			flag=1
      			break
      		fi
  			done
  				if [ $((flag)) -eq 0 ]
				then
					array[$k]=$((factor))
					k=$((k+1))
					count=1
				fi
  		fi
  done
echo " Prime factors are ${array[@]} "
if [ $((count)) -eq 0 ]
then
  echo "no prime factors found except 1 and $input"
fi
