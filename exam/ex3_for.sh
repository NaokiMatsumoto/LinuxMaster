#!/bin/bash

for i in $(seq 1 100);do
	if [ "$(( i % 15 ))" -eq 0 ];then
		echo "${i}: FizzBuzz"
	elif [ "$(( i % 5 ))" -eq 0 ];then
		echo "${i}: Buzz"
	elif [ "$(( i % 3 ))" -eq 0 ];then
		echo "${i}: Fizz"
	else
		echo "${i}"
	fi
done
