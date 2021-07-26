#!/bin/bash -x

toss=$(($RANDOM%2))
if [ $toss -eq 1 ]
then
	echo "Its head"
else
	echo "Its tail"
fi
