#!/bin/bash 

declare -A triplet
declare -A percent
num=21
TTT=0
TTH=0
THT=0
THH=0
HTT=0
HTH=0
HHT=0
HHH=0
for((i=1; i<=$num; i++))
do
toss1=$(($RANDOM%2))
toss2=$(($RANDOM%2))
toss3=$(($RANDOM%2))
if [ $toss1 -eq 0 ] && [ $toss2 -eq 0 ] && [ $toss3 -eq 0 ] 
then
	echo "Its TTT"
	TTT=$(($TTT+1))
elif  [ $toss1 -eq 0 ] && [ $toss2 -eq 0 ] && [ $toss3 -eq 1 ]
then
   echo "Its TTH"
   TTH=$(($TTH+1))
elif [ $toss1 -eq 0 ] && [ $toss2 -eq 1 ] && [ $toss3 -eq 0 ]
then
   echo "Its THT"
   THT=$(($THT+1))
elif [ $toss1 -eq 0 ] && [ $toss2 -eq 1 ] && [ $toss3 -eq 1 ]
then
   echo "Its THH"
   THH=$(($THH+1))
elif [ $toss1 -eq 1 ] && [ $toss2 -eq 0 ] && [ $toss3 -eq 0 ]
then
   echo "Its HTT"
   HTT=$(($HTT+1))
elif [ $toss1 -eq 1 ] && [ $toss2 -eq 0 ] && [ $toss3 -eq 1 ]
then
   echo "Its HTH"
   HTH=$(($HTH+1))
elif [ $toss1 -eq 1 ] && [ $toss2 -eq 1 ] && [ $toss3 -eq 0 ]
then
   echo "Its HHT"
   HHT=$(($HHT+1))
elif [ $toss1 -eq 1 ] && [ $toss2 -eq 1 ] && [ $toss3 -eq 1 ]
then
   echo "Its HHH"
   HHH=$(($HHH+1))
else
	echo "invalid"
fi
done 
triplet[TTT]=$TTT 
triplet[TTH]=$TTH
triplet[THT]=$THT
triplet[THH]=$THH
triplet[HTT]=$HTT
triplet[HTH]=$HTH
triplet[HHT]=$HHT
triplet[HHH]=$HHH
echo "triplet: ${triplet[*]}"
percent[TTT]=$(($TTT*100/21))
percent[TTH]=$(($TTH*100/21))
percent[THT]=$(($THT*100/21))
percent[THH]=$(($THH*100/21))
percent[HTT]=$(($HTT*100/21))
percent[HTH]=$(($HTH*100/21))
percent[HHT]=$(($HHT*100/21))
percent[HHH]=$(($HHH*100/21))
 
echo "percent: ${percent[*]}"
