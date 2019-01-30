#!/bin/bash

add () 
{
	let ans=( $1 + $2 )
}

sub () 
{
	let ans=( $1 - $2 )
}

mult () 
{
	let ans=( $1*$2 )
}

div () 
{
	let ans=( $1/$2 )
}

if [ $# -ne 3 ] ; then
	echo "invalid number of input. You must give two integers (e.g. 0, 1, 2, etc.) and an operand (a for addition, s for subtraction, etc)" && exit 1
fi


if [[ $3 == a ]] ; then
	add $1 $2
elif [[ $3 == s ]] ; then
	sub $1 $2
elif [[ $3 == m ]] ; then
	mult $1 $2
elif [[ $3 == d ]] ; then
	div $1 $2
else
	echo "invalid operand" && exit 1
fi

echo $ans
