#!/bin/bash


function calcurate_sum(){
    sum=0
    while read p;
    do
        sum=$(( sum + p ))
    done < ${1}
    echo "SUM: ${sum}"
    exit 0
}

function calcurate_avg(){
    sum=0
    count=0
    while read p;
        do
        sum=$(( sum + p ))
        count=$(( count + 1 ))
    done < ${1}
    echo "AVG: $(( sum / count ))"
    exit 0
}

function calcurate_min(){
    while read p;
    do
        if [ -z ${min} ];then
             min=${p}
        else
             if [ ${min} -gt ${p} ];then
                   min=${p}
             fi
        fi
    done < ${1}
    echo "MIN: ${min}"
    exit 0
}

function calcurate_max(){
    while read p;
    do
        if [ -z ${max} ];then
             max=${p}
        else
             if [ ${max} -lt ${p} ];then
                   max=${p}
             fi
        fi
    done < ${1}
    echo "MAX: ${max}"
    exit 0
}

