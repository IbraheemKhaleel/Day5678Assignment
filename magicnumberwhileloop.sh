#!/bin/bash -x
echo "think of a number "
random=$((RANDOM%(100-1)+1))
read -p "press 1 if its the number or press 2 " ans
if [ $((ans)) -eq 1 ]
then
	echo "$random is the magic number "                                                           
elif [ $((ans)) -eq 2 ]
then
	read -p "If the number we gave is less than half of your number press 1, if its greater press 2,if equals to half,press 3 " half
fi
if [ $((half)) -eq 1 ]
then
	for (( i=$((random));i<=100;i++ ))
	do
		read -p "Is $i the magic number,press 1 " yes
		if [ $((yes)) -eq 1 ]
		then
			echo "the magic number is $i "
			break
		fi
	done	
elif [ $((half)) -eq 2 ]
then
	 for (( i=1;i<=$((random));i++ ))
   do
      read -p "Is $i the magic number,press 1 " yes
      if [ $((yes)) -eq 1 ]
      then
         echo "the magic number is $i "
         break
      fi
   done
elif [ $((half)) -eq 3 ]
then
	magic=$((random*2))
	echo "Your magic number is $magic "
fi

