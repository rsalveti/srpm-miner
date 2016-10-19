#!/bin/bash
rm -rf $1
mkdir -p $1
cd $1
repoquery -g -l $1 > $1.pkg.list
for pkg in $(cat $1.pkg.list);
do
	yumdownloader --source $pkg
	if [ $? -ne 0 ]; then
		echo Failed to fetch: $pkg
	fi 
done
