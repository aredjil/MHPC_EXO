#! /bin/bash 

## This script aims to guess a number from 1 to 20 
echo "Think of a number between 1 and 20"

options=("yes" "no" "quite")
var=$((1+$RANDOM%20))
echo "Is your number $var"
PS3="Please choose an option: "
select option in "${options[@]}"
do
	case $option in 
		"yes")
			break
			;;
		"no")
			var=$((1+$RANDOM%20))
			echo "Is your number $var"
			;;
		"quite")
			break
			;;

	esac 
done
