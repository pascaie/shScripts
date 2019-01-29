#!/bin/bash

echo "please insert two strings of text separated by a space"

read -a str

[[ ${#str[@]} -ne 2 ]] && echo "invalid number of input. Try again" && exit 1

str1=${str[0]}
str2=${str[1]}

echo "number of word given as input is ${#str[@]}, the two strings are \"$str1\" and \"$str2\""

len1=${#str1}
len2=${#str2}

if [[ $len1 -gt $len2 ]] ; then
	echo "$str1 contains more characters than $str2"
elif [[ $len1 -lt $len2 ]] ; then
	echo "$str1 contains less characters than $str2"
else
	echo "$str1 and $str2 contain the same number of characters"
	
	if [[ $str1 == $str2 ]] ; then
		echo "and they are the same word!"
	else
		echo "but they are not the same word"
	fi
fi




# echo $len1 $len2
