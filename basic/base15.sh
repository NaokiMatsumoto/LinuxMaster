#!/bin/bash

select var in apple banana lemon exit ls
do
	# ${var}
	if [ -z "${var}" ]; then
		continue
	fi
	echo "${var}"
	if [ "${var}" = "exit" ]; then
		break
	fi
done
echo "select end"
