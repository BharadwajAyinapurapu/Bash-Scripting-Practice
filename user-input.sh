#!/bin/bash 

first(){



	if [[ $1 == "Bharadwaj" && $2 == "bd" ]]
	then
		echo "Login successful"
	else
		echo "Login failed" 
	fi

}



oddeven(){

#	num=$1
#	echo "$1"
	if (( $1 % 2 == 0 ))
	then
		echo "The number is EVEN"
	else
		echo "The number is ODD"
	fi
}

prime(){

	if (( $1 == 0 ))
	then
		echo "Neither prime nor composite"
	elif (( $1 == 1 ))
	then
		echo "Not a prime number"
	else
		if (( $1==0 ))
		then 
			echo "Neither prime nor composite"
		elif (($1==1))
		then
			echo "Not a prime number"
		else
			declare -i x=$(( $1/2 ))
			declare -i f=0
			for((i=2; i<=$x; i++ ))
			do
				if (($1%i==0))
				then 
					echo "Its not a Prime number"
					(( f=1 ))
					break
				fi
			done
			if (( $f == 0 ))
			then
				echo "Its a Prime number"
			fi
		fi
	fi
}


roll(){
	num=$(( 1 + $RANDOM % 6 )) 
	echo "The number you got is : $num"
}

square(){
	echo "The square of the number is : $(( $1 * $1 ))"
}
user(){
	#echo "Choose one of the following functionality"
	#select option in "Roll a dice" "Odd or Even number" "Prime number" "Quit"
	#do
		case $1 in
			1) roll;;
			2) oddeven $2;;
			3) prime $2;;
			4) square $2;;
			5) break;;
			*) echo "Wrong option. Choose another one.";;
		esac
	#done
}

#first $1 $2
user $1 $2

