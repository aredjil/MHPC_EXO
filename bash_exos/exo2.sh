#!/bin/bash
# The aim of this script is to return a specified oepration between two given numbers
options=("sum" "sub" "division" "multiplication" "Quit")
add(){
read -p "Please type the first number " n1
read -p "Please type the second number " n2
echo "The sum is: $(($n1+$n2))"
}
sub(){
read -p "Please type the first number " n1
read -p "Please type the second number " n2
echo "The substraction is: $(($n1-$n2))"
}
mult(){
read -p "Please type the first number " n1
read -p "Please type the second number " n2
echo `expr $n1 \* $n2`
}
div(){
read -p "Please type the first number " n1
read -p "Please type the second number " n2
echo `expr $n1/$n2` 
}

PS3="Please enter your choice: "
select option in "${options[@]}"; do
    case $option in
        "sum")
		add
            ;;
        "sub")
		sub
            ;;
    "division")
	    div
	    ;;
    "multiplication")
	    mult
	    ;;
        "Quit")
            break
            ;;
        *)
            echo "Invalid option. Try again."
            ;;
    esac
done
