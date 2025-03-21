#!/bin/bash

read -p "ファイル名を入力してください: " fh

if [ -f ${fh} ];then
	read -p "sum, avg, min, max, exit" command
	if [ ${command} = "sum" ];then
		sum=0
		while read p;
		do
			sum=$(( sum + p ))
		done < ${fh}
		echo "SUM: ${sum}"
		exit 0
	elif [ ${command} = "avg" ];then
		sum=0
		count=0
		while read p;
		do
			sum=$(( sum + p ))
			count=$(( count + 1 ))
		done < ${fh}
		echo "AVG: $(( sum / count ))"
		exit 0
	elif [ ${command} = "min" ];then
		while read p;
		do
			if [ -z ${min} ];then
				min=${p}
			else
				if [ ${min} -gt ${p} ];then
					min=${p}
				fi
			fi
		done < ${fh}
		echo "MIN: ${min}"
		exit 0
	elif [ ${command} = "max" ];then
		while read p;
		do
			if [ -z ${max} ];then
				max=${p}
			else
				if [ ${max} -lt ${p} ];then
					max=${p}
				fi
			fi
		done < ${fh}
		echo "MAX: ${max}"
		exit 0
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
