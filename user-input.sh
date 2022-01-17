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



oddeven(){
	echo " Enter any number of your choice "
	read num

	if (( num % 2 == 0 ))
	then
		echo "The number is EVEN"
	else
		echo "The number is ODD"
	fi
	user
}



user(){
	echo "Choose one of the following functionality"
	select option in "Roll a dice" "Odd or Even number" "Prime number" "Quit"
	do
		case $option in
			"Roll a dice") roll;;
			"Odd or Even number") oddeven;;
			"Prime number") prime;;
			"Quit") break;;
			*) echo "Wrong option. Choose another one.";;
		esac
	done
}

first
user

