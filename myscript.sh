#!/usr/bin/env bash




add(){
	echo "The number 1 is : $1"
	echo "The number 2 is : $2"
        declare -i x=$1+$2
	echo "The sum is : $x"
}

add 2 3

for i in $(ls)
	#echo " (( i++ )) "
do
	if [ $i == "Desktop" ];then
		echo "The contents of desktop are : $(cd Desktop;ls) "
	
	fi
done



