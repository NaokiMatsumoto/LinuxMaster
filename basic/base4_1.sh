#!/bin/bash

echo "${1} ${2} ${3}" # 第1引数, 第2引数, 第3引数
echo "${0}" # ファイル名
echo ${@}

exit 1

