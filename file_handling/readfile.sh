#!/bin/bash

if [ $# -eq 0 ];
then
	echo "Please, enter at least one argument"
	exit 1
fi

content=$(<$1)

echo $content
