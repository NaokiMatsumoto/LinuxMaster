#!/bin/bash

function print_hello(){
	echo 'hello world'
	echo ${1}
}

function set_name(){
	local name=${1}
	echo "name set ${name}"
}

print_hello
print_hello 'I am Taro'


name='Taro'
echo ${name}
set_name 'Hanako'
echo ${name}
print_hello "I am ${name}"
