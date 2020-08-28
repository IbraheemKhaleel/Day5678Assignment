#!/bin/bash 
for ((i=0;i<10;i++ ))
do
	array[i]=$((RANDOM%(999-100)+100))
done
echo "array list is " ${array[@]}
largest=${array[0]}
smallest=${array[0]}
for((i=1; i<10; i++))
do
  if [[ ${array[$i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${array[$i]}
  fi
done
echo "second greatest is $secondGreatest "
for((i=1; i<10; i++))
do
  if [[ ${array[i]} < $smallest ]]
  then
    secondsmallest=$smallest
    smallest=${array[$i]}
  fi
done
echo "secondsmallest is $secondsmallest"
