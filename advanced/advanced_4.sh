#!/bin/bash

echo "hello world"

arg=${1}
echo "arg = ${arg}"

set -x

for i in $(seq 1 20)
do
    echo ${i}
    sleep 1
    if [ ${i} -eq 10 ];then
	    set +x
    fi
done
