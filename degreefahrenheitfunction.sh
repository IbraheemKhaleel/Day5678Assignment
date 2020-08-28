#!/bin/bash -x
read -p "Press 1 for degree - farenheit conversion and 2 for farenheit-degree conversion " n1
read -p " Enter the value " value
function degree()
{
   local D=$1
   echo $((D))
}
function farenheit()
{
   local f=$1
   echo $((f))
}
case "$n1" in
1)F=$((((value*9)/5)+32))
   far="$( farenheit $F )"
   if [ $((value)) -lt 0 ] || [ $((value)) -gt 100 ]
	then
		echo "Enter value between 0 and 100"
      exit
	fi
   echo " The farenhiet value of $value is $far "
	;;
2)C=$(((5*(value-32))/9))
   cel="$( degree $C )"
  	if [ $((value)) -lt 32 ] || [ $((value)) -gt 212 ]
	then
      echo "Enter value between 32 and 212 "
      exit
	fi
   echo " The degree value of $value is $cel degrees "
   ;;
*)echo "nothing"
   ;;
esac

