#!/bin/bash

# read var # キーボード入力を受けつける
# echo "var = ${var}"

# read var1 var2 var3
# echo "var1 = ${var1}, var2 = ${var2}, var3 = ${var3}"

read -p "変数を入力してください: var = " var
echo "var = ${var}"

read -sp "password: " password
echo -e "\npassword = ${password}"

read -p "名前をスペース区切りで入力して: " -a names
echo "names = ${names[@]}"
