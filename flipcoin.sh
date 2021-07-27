#!/bin/bash -x

declare -A singlet
declare -A percent
read -p "Enter how many times you want to flip coin: " num
head=0
tail=0
for((i=1; i<=$num; i++))
do
toss=$(($RANDOM%2))
if [ $toss -eq 1 ]
then
	echo "Its head"
	head=$(($head+1))
else
	echo "Its tail"
	tail=$(($tail+1))
fi
done
singlet[H]=$head
singlet[T]=$tail
echo "no.of head= $head"
echo "no.of tail= $tail"
echo "${singlet[*]}"
percent[H]=$(($head*100/21))
percent[T]=$(($tail*100/21))
echo "${percent[*]}"
