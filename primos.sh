#!/bin/bash

limite=10
cont=0

for ((i=2;i<=limite;i++))
do
	for((j=2;j<=i;j++))
	do
#		echo $i
		if [ $(($i%$j))=0  ]; then
#			let "cont++"
			echo "$i mod $j"
		fi
		
	done
#	echo "$cont"
	cont=0

done
exit
