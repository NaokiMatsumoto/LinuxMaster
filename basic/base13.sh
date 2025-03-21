#!/bin/bash


#cat "sample.txt" | while read p;
sum=0
cat "sample.txt" | while read p
#while read p
do
	sum=$(( sum + p ))
	echo "${p}"
	sleep 0.5
done
# done < "sample.txt"
echo "sum: ${sum}"

n=0
until (( "${n}">5 ));
do
	echo "${n}"
	sleep 1
	n=$(( n + 1 ))
done
