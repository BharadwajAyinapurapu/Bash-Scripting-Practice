#!/bin/bash 

first(){

	echo "Enter your name :"
	read name

	echo "Enter your password :"
	read -s pass

	if [[ $name == "Bharadwaj" && $pass == "bd" ]]
	then
		echo "Login successful"
	else
		echo "Login failed"
		echo "$(clear)"
		first
	fi

}

first
