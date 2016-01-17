#!/bin/bash

limite=10000
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
exit
