#!/bin/bash

if [ $# -eq 0 ];
then
	echo "Usage: you have to use at least one argument"
	exit 1
fi
echo "argument: $1"
exit 0
