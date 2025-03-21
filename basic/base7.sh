#!/bin/bash

# and
# if [ "${1}" -gt 20 ] && [ "${1}" -lt 60 ]; then
# if [ "${1}" -gt 20 -a "${1}" -lt 60 ]; then
# if [[ "${1}" -gt 20 && "${1}" -lt 60 ]]; then
if test "${1}" -gt 20 && test "${1}" -lt 60; then
	echo "第一引数が20より大きく、60より小さい"
fi

# or
# if [ "${2}" -lt 10 ] || [ "${2}" -gt 60 ]; then
# if [ "${2}" -lt 10 -o "${2}" -gt 60 ]; then
# if [[ "${2}" -lt 10  || "${2}" -gt 60 ]]; then
if test "${2}" -lt 10  || test "${2}" -gt 60; then
	echo "第二引数は10より小さいか60より大きい"
fi

# not
name="Taro"
# if ! test "${name}" = "Jiro"; then
if [[ ! "${name}" = "Jiro" ]]; then
# if [ ! "${name}" = "Jiro" ]; then
	echo "名前はJiroではない"
fi

echo 'A' && echo 'B'





