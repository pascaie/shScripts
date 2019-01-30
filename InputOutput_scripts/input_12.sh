#!/bin/bash

echo "Please enter 1 or 2"
read number

if [ $number -ne 1 -a $number -ne 2 ];
then
	echo "you typed neither 1 nor 2! try again"
	exit 1
fi

if [ $number -eq 1 ];
then
	var='YES'
else
	var='NO'
fi

echo "$var"
