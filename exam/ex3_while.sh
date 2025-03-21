#!/bin/bash

i=1
while [ "${i}" -le 100 ]; do
	if [ "$(( i % 15 ))" -eq 0 ];then
		echo "${i}: FizzBuzz"
	elif [ "$(( i % 5 ))" -eq 0 ];then
		echo "${i}: Buzz"
	elif [ "$(( i % 3 ))" -eq 0 ];then
		echo "${i}: Fizz"
	else
		echo "${i}"
	fi
	i=$(( i + 1 ))
done
