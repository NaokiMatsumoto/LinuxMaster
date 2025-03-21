#!/bin/bash

fruits=('banana' 'apple' 'grape') # 配列の作成

fruits[3]='lemon'
unset fruits[2]
fruits[1]='ringo'
echo ${fruits[@]}
echo ${fruits[0]}
echo ${!fruits[@]} # index(0 1 3)
echo ${#fruits[@]}
