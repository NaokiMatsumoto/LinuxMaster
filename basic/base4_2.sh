#!/bin/bash

echo ${#} # 引数の数
./base4_1.sh 1 2 3

echo 'Hello'
echo ${?} # 直前に実行したコマンドが成功の場合は0、失敗はそれ以外
