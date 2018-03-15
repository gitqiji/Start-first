#!/bin/bash

predate=$(date "+%Y_%m_%d" -d  '1 month ago')

curdate=$(date "+%Y_%m_%d")

echo $curdate $predate

premonth=$(date "+%m" -d '-1 month')

preday=$(date "+%m" -d '-1 day')

echo $premonth $preday


rm -rf filename

var=1
t=$(date "+%Y_%m_%d" -d ''${var}' day ago')
while [ $predate \< $t ]
do
	for fle in `ls $datadir | grep '***xxx'`
	do
		if [ $fle = 'xxx_'$t'_xxx' ]; then
			echo 'have target '$t''
			echo 'log.'$t''
			echo $fle
		fi
	done
let var+=1
t=$(date "+%Y_%m_%d" -d ''${var}' day ago')
done



