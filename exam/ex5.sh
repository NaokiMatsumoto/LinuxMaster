#!/bin/bash

source ./ex5_function.sh

read -p "ファイル名を入力してください: " fh

if [ -f ${fh} ];then
	read -p "sum, avg, min, max, exit" command
	if [ ${command} = "sum" ];then
		calcurate_sum ${fh}
	elif [ ${command} = "avg" ];then
		calcurate_avg ${fh}
	elif [ ${command} = "min" ];then
		calcurate_min ${fh}
	elif [ ${command} = "max" ];then
		calcurate_max ${fh}
	elif [ ${command} = "exit" ];then
		exit 0
	else
		echo "そのコマンドはありません"
		exit 1
	fi
else
	echo "ファイルが存在しません"
	exit 1
fi
