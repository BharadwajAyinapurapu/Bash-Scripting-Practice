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
}

prime(){
	echo " Enter any number of your choice "
	read num

	if (( num == 0 ))
	then 
		echo "Neither prime nor composite"
	elif (( num == 1 ))
	then
		echo "Not a prime number"
	else
		declare -i x=$(( num/2 ))
		declare -i f=0
		for((i=2; i<=$x; i++ ))
		do
			if (( num%i == 0 ))
			then 
				echo "Its not a Prime number"
				f=1
				break
			fi
		done
		if (( f == 0 ))
		then
			echo "Its a Prime number"
		fi
	fi
}


roll(){
	num=$(( 1 + $RANDOM % 6 )) 
	echo "The number you got is : $num"
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

#first
user

