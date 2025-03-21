#!/bin/bash

var="${1}"
case "${var}" in
	"blue" )
		echo "GO";;
	"red" )
		echo "STOP";;
	"yellow" )
		echo "WAIT";;
	* )
		echo "Wrong Color";;
esac

var2="${2}"
case "${var2}" in
	[a-z] | [A-Z] )
		echo "アルファベットです";;
	[0-9] )
		echo "数値です";;
esac

