#!/bin/bash

T="$(date +%s%N)" 

limite=1000
cont=0

for ((i=2;$i<=$limite;++i))
do
	for((j=2;$j<=$i;++j))
	do
#		echo $i
		if [ $(($i%$j)) = 0 ]; then
			let "cont++"
#			echo "$i mod $j"
		fi
	done
	if [ $cont = 1 ]; then
		echo $i
	fi
	cont=0

done



# Time interval in nanoseconds
T="$(($(date +%s%N)-T))"
# Seconds
S="$((T/1000000000))"
# Milliseconds
M="$((T/1000000))"

echo "Time in nanoseconds: ${M}"
echo "Time in seconds: ${S}"
exit
