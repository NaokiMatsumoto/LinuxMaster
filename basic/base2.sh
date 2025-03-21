#!/bin/bash

var1='変数1'
echo "var1 = ${var1}"

# var2=`ls`
var2=$(ls)
echo ${var2}
echo ${BASH}
echo ${BASH_VERSION}
echo ${HOME}
echo ${PWD}

