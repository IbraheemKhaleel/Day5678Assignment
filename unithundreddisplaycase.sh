#!/bin/bash -x
read -p "Enter 1,10,100,10000,100000 " n
case "$n" in
1)echo "unit value is $n "
	;;
10)a=$((n/10))
	b=$((n%10))
 	echo " unit value is $b and tenth value $a "
	;;
100)a=$((n/100))
  	 b=$((n%100))
 	echo " unit value is $b ,tenth value is $b and hundredth value is $a "	     
	;;
1000)a=$((n/1000))
 	b=$((n%1000))
	echo " unit value is $b ,tenth value is $b , hundredth value is $b and thousand value is $a  "
	;;
10000)a=$((n/10000))
	b=$((n%10000))
	echo " unit value is $b ,tenth value is $b,hundredth value is $b,thousand value is $b and ten thousand value is $a "
	;;
100000)a=$((n/100000))
  	b=$((n%100000))
	echo "unit value is $b ,tenth value is $b,hundredth value is $b,thousand value is $b , ten thousand value is $b and one lakh value is $a"
	;;
*)	echo "Enter given number"
	;;
esac
