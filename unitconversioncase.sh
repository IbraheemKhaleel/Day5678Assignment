#!/bin/bash -x
echo "Enter following conversion"
read -p "1.Feet to inch, 2.Feet to meter, 3.inch to feet, 4. Meter to feet " n
read -p "Enter a value" value
case "$n" in
	1)F=$((12*value))
		echo "value of $value feet is $F inches "
		;;
	2)F=$(((3*value)/10))
		echo "value of $value feet is $F meters"
		;;
	3)I=$(((10*value)/120))
		echo "value of $value inches is $I feet"
		;;
	4)M=$(((value*32)/10))
		echo "value of $value meter is $M feet"
		;;
	*) echo "Choose from above given number "
		;;
esac 
