#!/bin/bash

if [ ${#} -ne 1 ];then
	echo "引数を一つ設定してください"
	exit 1
fi

lock_file="ex7.lock"

function stop_exam7(){
	rm ${lock_file}
	exit 0
}


if [ ${1} = "start" ];then
	if [ -f ${lock_file} ];then
		echo "プロセスが起動中です"
		exit 0
	else
		echo $$ >> ${lock_file}
		trap "stop_exam7" 2 15
		for i in $(seq 1 1000)
		do
			echo $i >> output_$$.txt
			sleep 1
		done
		stop_exam7
	fi
elif [ ${1} = "stop" ];then
	if [ -f ${lock_file} ];then
		while read p;
		do
			PID=${p}
		done < ${lock_file}
		kill -15 ${PID}
	else
		echo "プロセスが実行されていません"
		exit 0
	fi
elif [ ${1} = "status" ];then
	if [ -f ${lock_file} ];then
		while read p
		do
			PID=${p}
		done < ${lock_file}
		echo "プロセスが動いています。Process Id: ${PID}"
	else
		echo "プロセスが実行されていません"
	fi
else
	echo "引数が誤っています"
	exit 1
fi
