#!/bin/bash


ls

read -p "ファイル名を入力してください: " file_name
read -p "ファイルに追記する文字を入力してください: " input_value

if [ -f "${file_name}" ];then
	echo "${input_value}" >> "${file_name}"
else
	echo "ファイルが存在しません"
fi

