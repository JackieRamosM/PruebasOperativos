#!/bin/bash

T="$(date +%s%N)"

euler=0
limit=$1

for((i=0;$i<$limit;++i))
do
    k=1
    if [ $i = 0 ]; then
        euler=1
    else
        for((j=1;$j<=$i;++j))
        do
            k=$(($j*$k))
        done
        if [ $k != 0 ]; then
            euler=$euler+$(echo "scale = 20; 1/$k" | bc)
        fi
    fi
    #echo $(($i+1))
    #echo "scale = 20; $euler" | bc
done

# Time interval in nanoseconds
T="$(($(date +%s%N)-T))"
# Seconds
S="$((T/1000000000))"
# Milliseconds
M="$((T/1000000))"

echo "Con $limit -- Time in milliseconds: ${M}"
#echo "Time in seconds: ${S}"
