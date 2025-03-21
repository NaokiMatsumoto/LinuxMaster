#!/bin/bash

# echo "$$"
# sleep 100
function cleanup(){
	echo '割り込みコマンドが発生しました'
	rm ./tmp_*.txt
	exit 1
}

function stop_15(){
	echo 'プログラムが終了しました'
	exit 1
}

echo $$ >> tmp_$$.txt

trap "cleanup" 0 2
trap "stop_15" 15

# 0: 正常終了
# 2: 割り込み
# 9: kill -9 での強制停止
# 15: killでの停止

for i in $(seq 1 50);
do
	echo ${i}
	sleep 1
done

