#!/bin/bash
## The aim of this script is to return a specified oepration between two given numbers
options=("sum" "sub" "division" "multiplication" "Quit")
add(){
read -p "Type the first number " n1
read -p "Type the second number " n2
echo "n1 + n2= $(($n1+$n2))"
}
sub(){
read -p "Type the first number " n1
read -p "Type the second number " n2
echo "n1 -n2= $(($n1-$n2))"
}
mult(){
read -p "Type the first number " n1
read -p "Type the second number " n2
echo `expr $n1 \* $n2`
}
div(){
read -p "Type the first number " n1
read -p "Type the second number " n2
echo "n1/n2= $(($n1/$n2))"
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
