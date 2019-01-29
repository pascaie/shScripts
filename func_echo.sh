#!/bin/bash

#Define the three functions prior to call them
func1() {
echo "this message is from function #1"
	}

func2() {
echo "this message is from function #2"
	}

func3() {
echo "this message is from function #3"
	}

#get an input number from the user, from 1 to 3
echo "enter a number from 1 to 3"
read number

#call a function, depending on the input number
func$number
