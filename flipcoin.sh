#!/bin/bash -x

declare -A singlet
head=0
tail=0
for((i=1; i<=21; i++))
do
toss=$(($RANDOM%2))
if [ $toss -eq 1 ]
then
	head=$(($head+1))
else
	tail=$(($tail+1))
fi
done
singlet[H]=$head
singlet[T]=$tail
echo "singlet: ${singlet[*]}"


for ((i=0;i<2;i++))
do
 for ((j=i+1;j<2;j++))
 do
  if [ ${singlet[i]} -lt ${singlet[j]} ]
  then
  temp=$[${singlet[i]}]
  singlet[i]=$[${singlet[j]}]
  singlet[j]=$[$temp]
  fi
 done
done
echo "Sorted Singlet Array is :  ${singlet[*]} "
winner=$[${singlet[0]}]
if [ $winner -eq $head ]
then
	echo "head is the winner"
else
	echo "tail is the winner"
fi


#--------for doublet---------


declare -A doublet
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
	TT=$(($TT+1))
elif  [ $toss1 -eq 0 ] && [ $toss2 -eq 1 ]
then
   TH=$(($TH+1))
elif [ $toss1 -eq 1 ] && [ $toss2 -eq 0 ]
then
   HT=$(($HT+1))
elif  [ $toss1 -eq 1 ] && [ $toss2 -eq 1 ]
then
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

for ((i=0;i<4;i++))
do
 for ((j=i+1;j<4;j++))
 do
  if [ ${doublet[i]} -lt ${doublet[j]} ]
  then
  temp=$[${doublet[i]}]
  doublet[i]=$[${doublet[j]}]
  doublet[j]=$[$temp]
  fi
 done
done
echo "Sorted Doublet Array is :  ${doublet[*]} "
winner1=$[${doublet[0]}]
if [ $winner1 -eq $TT ]
then
	echo "TT is the winner"
elif [ $winner1 -eq $TH ]
then 
	echo "TH is the winner"
elif [ $winner -eq $HT ]
then
	echo "HT is the winner"
elif [ $winner1 -eq $HH ]
then 
	echo "HH is the winner"
fi


#--------------for triplet---------




declare -A triplet
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
	TTT=$(($TTT+1))
elif  [ $toss1 -eq 0 ] && [ $toss2 -eq 0 ] && [ $toss3 -eq 1 ]
then
   TTH=$(($TTH+1))
elif [ $toss1 -eq 0 ] && [ $toss2 -eq 1 ] && [ $toss3 -eq 0 ]
then
   THT=$(($THT+1))
elif [ $toss1 -eq 0 ] && [ $toss2 -eq 1 ] && [ $toss3 -eq 1 ]
then
   THH=$(($THH+1))
elif [ $toss1 -eq 1 ] && [ $toss2 -eq 0 ] && [ $toss3 -eq 0 ]
then
   HTT=$(($HTT+1))
elif [ $toss1 -eq 1 ] && [ $toss2 -eq 0 ] && [ $toss3 -eq 1 ]
then
   HTH=$(($HTH+1))
elif [ $toss1 -eq 1 ] && [ $toss2 -eq 1 ] && [ $toss3 -eq 0 ]
then
   HHT=$(($HHT+1))
elif [ $toss1 -eq 1 ] && [ $toss2 -eq 1 ] && [ $toss3 -eq 1 ]
then
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

for ((i=0;i<8;i++))
do
 for ((j=i+1;j<8;j++))
 do
  if [ ${triplet[i]} -lt ${triplet[j]} ]
  then
  temp=$[${triplet[i]}]
  triplet[i]=$[${triplet[j]}]
  triplet[j]=$[$temp]
  fi
 done
done

echo "Sorted Triplet Array is: ${triplet[*]}"
winner2=$[${triplet[0]}]
case $winner2 in
  $HHH)
    echo "HHH wins"
  ;;
  $TTT)
    echo "TTT wins"
  ;;
  $HTH)
    echo "HTH wins"
  ;;
  $HTT)
    echo "HTT wins"
  ;;
  $HHT)
    echo "HHT wins"
  ;;
  $THT)
    echo "THT wins"
  ;;
  $TTH)
    echo "TTH wins"
  ;;
  $THH)
    echo "THH wins"
  ;;
esac
