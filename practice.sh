#!/bin/bash

if [ 4 -lt 5 -a 5 -gt 4 ]      # output is true
then
	echo "hi"
else
	echo "bye"
fi

if [[ 4 -gt 5 && 5 -lt 4 ]]    # output is false
then
       	echo "hi"
else
	echo "bye"
fi

echo "****************************************************"

echo "Select your animal"
select animal in "cat" "dog"
do
	case $animal in
		cat) echo "The animal is cat";;
		dog) echo "The animal is dog";;
		*)   echo "No match"
			break;;
	esac
done

echo "***************************************************"



