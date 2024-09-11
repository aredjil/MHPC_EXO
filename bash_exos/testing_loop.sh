#!   /bin/bash 
x=0

while [ $x -le 5 ]
do
	echo "$x"
	read -p "what number do you want " x
 echo "$x"
 x=$((x+1))
done
