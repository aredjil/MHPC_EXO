#!/bin/bash
# This script outputs the number and the name of the outputs passed 
echo ""
echo "The number of arguments is: ${#}"
echo ""
echo "The arguments passed are the following: "
echo ""
for var in ${*}
do 
	echo "${var}" 
done 
