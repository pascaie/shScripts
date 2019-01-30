#!/bin/bash

echo "the name of this script is: $0"
[ $# -ne 1 ] && echo "wrong number of inputs" && exit
echo "input: $1"
