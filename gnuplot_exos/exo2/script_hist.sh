#! /bin/bash 
if [[ ! -e ./data.txt ]]
then
	touch data.txt
else 
	rm data.txt
	touch data.txt
fi
for i in $(seq 1 1000)
do 
	randy=$((1+$RANDOM%20))
	echo "$randy">>data.txt 
done
rm hist_data.txt
for i in $(seq 1 20)
do 
	grep -o "$i" data.txt | wc -l >> occ.txt 
	echo "$occ" >>hist_data.txt
done

