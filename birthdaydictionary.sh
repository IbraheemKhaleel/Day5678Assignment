#!/bin/bash -x
jan=0
feb=0
mar=0
april=0
may=0
june=0
july=0
aug=0
sept=0
oct=0
nov=0
dec=0
read -p "Enter the year in YY format " y  #YY
if [[ $((y)) -ne 92 || $((y)) -ne 93 ]]
then
	echo " year must be between 92 and 93 "
	exit
fi
declare -A month
for ((i=0;i<4;i++))
do
	read -p " Enter the month you born " m
	if [ $((m)) -eq 1 ]
	then
		jan=$((jan+1))
		month[january]=$((jan))
	elif [ $((m)) -eq 2 ]
	then
		 feb=$((feb+1))
		month[february]=$((feb))
	elif [ $((m)) -eq 3 ]
		then
		 mar=$((mar+1))
		month[march]=$((mar))
	elif [ $((m)) -eq 4 ]
	then	
		 april=$((april+1))
		month[april]=$((april))
	elif [ $((m)) -eq 5 ]
	then
		 may=$((may+1))
		month[may]=$((may))
	elif [ $((m)) -eq 6 ]
	then	
		 june=$((june+1))
		month[june]=$((june))
	elif [ $((m)) -eq 7 ]
	then
		 july=$((july+1))
		month[july]=$((july))
	elif [ $((m)) -eq 8 ]
	then
		 aug=$((aug+1))
		month[august]=$((aug))
	elif [ $((m)) -eq 9 ]
	then
		 sept=$((sept+1))
		month[september]=$((sept))
	elif [ $((m)) -eq 10 ]
	then
		 oct=$((oct+1))
		month[october]=$((oct))
	elif [ $((m)) -eq 11 ]
	then
		 nov=$((nov+1))
		month[november]=$((nov))
	elif [ $((m)) -eq 12 ]
	then
		 dec=$((dec+1))
		month[december]=$((dec))
	else
		echo "Enter a valid month"
		i=$((i-1))
	fi
done
echo "The number of individuals born in january is " $jan
echo "The number of individuals born in february is " $feb
echo "The number of individuals born in march is " $mar
echo "The number of individuals born in april is " $april
echo "The number of individuals born in may is " $may
echo "The number of individuals born in june is " $june
echo "The number of individuals born in july is " $july
echo "The number of individuals born in august is " $aug
echo "The number of individuals born in september is " $sept
echo "The number of individuals born in october is " $oct
echo "The number of individuals born in November is " $nov
echo "The number of individuals born in decemebr is " $dec
