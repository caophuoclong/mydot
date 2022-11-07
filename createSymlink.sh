#!/bin/sh
PWD=`pwd`
for dir in ./.*
do
	dir=${dir##*/}
	if [ -d $dir ];then
		# check if dir exist in home
		if [ ! -d ~/$dir ];then
			# create dir
			#echo "~/dir"
			mkdir ~/$dir
		fi
		for d in $dir/*
		do
			echo $PWD/$d $HOME/$d
		done
	else
		echo $PWD/$dir $HOME/$dir
	fi
done
