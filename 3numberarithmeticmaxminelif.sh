#!/bin/bash -x
read -p "enter first number" a
read -p "enter second number" b
read -p "enter third number" c
w=$((a+b*c))
x=$((a%b+c))
y=$((c+a/b))
z=$((a*b+c))
echo $w
echo $x
echo $y
echo $z
if [ $w -gt $x ] && [ $w -gt $y ] && [ $w -gt $z ]
then 
echo "$w value is greater" 
elif [ $x -gt $y ] && [ $x -gt $z ]
then
echo "$z is greater"
elif [ $y -gt $z ]
then
echo " $y is greater " 
else
echo "$z is greater"
fi 
if [ $w -lt $x ] && [ $w -lt $y ] && [ $w -lt $z ]
then
echo "$w value is lesser"
elif [ $x -lt $y ] && [ $x -lt $z ]
then
echo "$z is lesser"
elif [ $y -lt $z ]
then
echo " $y is lesser "
else
echo "$z is lesser"
fi

