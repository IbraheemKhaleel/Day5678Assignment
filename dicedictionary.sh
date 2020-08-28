#!/bin/bash 
a=0
b=0
c=0
d=0
e=0
f=0
declare -A dice
while [[ $((a)) -lt 10 && $((b)) -lt 10 && $((c)) -lt 10 && $((d)) -lt 10 && $((e)) -lt 10 && $((f)) -lt 10 ]]
do
	random=$((RANDOM%6 +1))
	case "$random" in
		1)a=$((a+1))
			dice[one]=$((a))
			if [[ ${dice[one]} -eq 10 ]]
			then
   			echo "dice one has reached maximum times"
			fi
			;;
		2)b=$((b+1))
			dice[two]=$((b))
			 if [[ ${dice[two]} -eq 10 ]]
         then
            echo "dice two has reached maximum time"
         fi
			;;
		3)c=$((c+1))
			dice[three]=$((c))
			 if [[ ${dice[three]} -eq 10 ]]
         then
            echo "dice three has reached maximum time"
         fi
			;;
		4)d=$((d+1))
			dice[four]=$((d))
			 if [[ ${dice[four]} -eq 10 ]]
         then
            echo "dice four has reached maximum times"
         fi
			;;
		5)e=$((e+1))
			dice[five]=$((e))
			 if [[ ${dice[five]} -eq 10 ]]
         then
            echo "dice five has reached maximum times"
         fi
			;;
		6)f=$((f+1))
			dice[six]=$((f))
			if [[ ${dice[six]} -eq 10 ]]
         then
            echo "dice six has reached maximum times"
			fi
			;;
		esac
done
echo ${dice[@]}
echo ${!dice[@]}
echo "values are $a $b $c $d $e $f  " 
if [[ $a -lt $b && $a -lt $c && $a -lt $d && $a -lt $e && $a -lt $f ]]
then
echo "dice one occured minimum times"
elif [[ $b -lt $c && $b -lt $d && $b -lt $e && $b -lt $f ]]
then
	echo "dice two occured minimum times"
elif [[ $c -lt $d && $c -lt $e && $c -lt $f ]]
then
	echo "dice three occured minimum times"
elif [[ $d -lt $e && $d -lt $f ]]
then
	echo "dice four occured minimum times"
elif [[ $e -lt $f ]]
then
	echo "dice five occured minimum times"
else
	echo "dice six occured minimum times"
fi

