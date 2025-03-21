#!/bin/bash

# if [[ -e "sample.txt" ]]; then
# -f ファイル存在チェック
# -d ディレクトリ存在チェック
# -e どちらでもいいので存在するかチェック
if [[ -d "sample.txt" ]]; then
	echo "sample.txtが存在します"
	rm -r "sample.txt"
fi


if [[ "sample1" -ot "sample2" ]];then
	echo "sample1はsample2より古い"
else
	echo "sample1はsample2より新しい"
fi

if [[ -s "sample" ]]; then
	echo "sampleには書き込みがあります"
fi
