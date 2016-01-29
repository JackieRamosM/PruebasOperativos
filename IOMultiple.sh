#!/bin/bash

while read line
do
    T="$(date +%s%N)"
    arch=$line
    declare -A myarray
    while IFS='{' read -r -a array
    do
        length=${#array[@]}
        cadenaFinal=""
        for ((i=1; i<${length}; i++))
        do
            cadenaFinal=$cadenaFinal'{'${array[$i]}
        done 
        echo $cadenaFinal | jq '.text'
    done < $line
done < "${1:-/dev/stdin}"
