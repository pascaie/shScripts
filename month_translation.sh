#!/bin/bash

echo "enter a month as a number (i.e. between 1 and 12), to get its name"

read month

case $month in
	1 )	echo "January";;
	2 )	echo "February";;
	3 )	echo "March";;
	4 )	echo "April";;
	5 )	echo "May";;
	6 )	echo "June";;
	7 )	echo "July";;
	8 )	echo "August";;
	9 )	echo "September";;
	10)	echo "October";;
	11)	echo "November";;
	12)	echo "December";;
	* )	echo "Wrong typing! try again";;
esac
exit 0
