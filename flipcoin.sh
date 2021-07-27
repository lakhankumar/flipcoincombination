#!/bin/bash 

declare -A doublet
declare -A percent
num=21
TT=0
TH=0
HT=0
HH=0
for((i=1; i<=$num; i++))
do
toss1=$(($RANDOM%2))
toss2=$(($RANDOM%2))
if [ $toss1 -eq 0 ] && [ $toss2 -eq 0 ] 
then
	echo "Its TT"
	TT=$(($TT+1))
elif  [ $toss1 -eq 0 ] && [ $toss2 -eq 1 ]
then
   echo "Its TH"
   TH=$(($TH+1))
elif [ $toss1 -eq 1 ] && [ $toss2 -eq 0 ]
then
   echo "Its HT"
   HT=$(($HT+1))
elif  [ $toss1 -eq 1 ] && [ $toss2 -eq 1 ]
then
   echo "Its HH"
   HH=$(($HH+1))
else
	echo "invalid"
fi 
done 
doublet[TT]=$TT 
doublet[TH]=$TH
doublet[HT]=$HT
doublet[HH]=$HH
echo "doublet: ${doublet[*]}"
percent[TT]=$(($TT*100/21))
percent[TH]=$(($TH*100/21))
percent[HT]=$(($HT*100/21))
percent[HH]=$(($HH*100/21)) 
echo "percent: ${percent[*]}"
