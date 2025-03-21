#!/bin/bash

# for
for command in ls pwd date
do
	echo "${command}"
	${command}
done

# for var in 1 2 3 4 5;
for var in $(seq 1 2 10)
do
	echo "${var}"
	if [ "${var}" -eq 3 ];then
	#	continue
		break
	fi
	echo "${var}"
	sleep 1
done
