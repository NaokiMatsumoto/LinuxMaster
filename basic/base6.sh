#!/bin/bash

str1="apple"
str2="banana"

if test "${str1}" = "${str2}"; then
	echo "二つの値は等しい"
fi


var=${1}
if [[ "${var}" = "blue" ]]; then
	echo "進め"
elif [[ "${var}" = "red" ]]; then
	echo "止まれ"
else
	echo "待て"
fi

var2=${2}
if [[ "${var2}" -eq 10 ]]; then
	echo "入力は10"
fi
if [[ "${var2}" -lt 20 ]]; then
	echo "入力は20より小さい"
elif [[ "${var2}" -ge 60 ]]; then
	echo "入力は60以上"
else
	echo "20以上,60未満"
fi




