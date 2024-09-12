#! /bin/bash 
path="/home/aredjil/Documents/MHPC_2024_2025/MHPC_EXO/bash_exos/kernal"
for file in "$path"/*
do
if [[ "$file" == *.sh ]]
then
       if [[ ! -x $file ]] 
       then
	       chmod +x $file
       else  
	       chmod -x $file
	fi 	
else
	echo "There are no files ending with .sh in this directory"
fi
done 
