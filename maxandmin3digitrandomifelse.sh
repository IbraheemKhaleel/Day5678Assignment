#!/bin/bash -x
random1=$(( RANDOM%(999-100) + 100 ))
random2=$(( RANDOM%(999-100) + 100 ))
random3=$(( RANDOM%(999-100) + 100 ))
random4=$(( RANDOM%(999-100) + 100 ))
random5=$(( RANDOM%(999-100) + 100 ))
echo "The five values are $random1  $random2  $random3  $random4   $random5"
if [ $random1 -gt $random2 ] && [ $random1 -gt $random2 ] && [ $random1 -gt $random3 ] && [ $random1 -gt $random4 ] && [ $random1 -gt $random5 ]
then
	echo " $random1 is the maximum value  "
elif [ $random2 -gt $random3 ] && [ $random2 -gt $random4 ] && [ $random2 -gt $random4 ] && [ $random2 -gt $random5 ]
then
	echo "random$2 is the greatest value "
elif [ $random3 -gt $random4 ] && [ $random3 -gt $random5 ]
then
	echo " $random3 is the maximum value  "
elif [ $random4 -gt $random5 ]
then
	echo "$random4 is the maximum value "
else
echo "$random5 is the maximum value "
fi
if [ $random1 -lt $random2 ] && [ $random1 -lt $random2 ] && [ $random1 -lt $random3 ] && [ $random1 -lt $random4 ] && [ $random1 -lt $random5 ]
then
echo " $random1 is the minimum value  "
elif [ $random2 -lt $random3 ] && [ $random2 -lt $random4 ] && [ $random2 -lt $random4 ] && [ $random2 -lt $random5 ]
then
echo "random$2 is the minimum value "
elif [ $random3 -lt $random4 ] && [ $random3 -lt $random5 ]
then
echo " $random3 is the minimum value  "
elif [ $random4 -lt $random5 ]
then
echo " $random4 is the minimum value "
else
echo "$random5 is the minimum value "
fi
