#!/bin/bash -x
read -p  " Enter day and month in numbers  " day month
if [ $day -ge 20 ] && [ $month -lt 6 ] && [ $month -gt 3 ] && [ $day -le 31 ]
then
	echo " Day comes in between March 20 and June 20  "
else
	echo " Day does not comes in between March 20 and June 20 "
fi
