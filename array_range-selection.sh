#!/bin/bash
declare -a ar
echo "the array is "

function pal() {
 local value=$1
 local temp=$value
 #echo "$value"
 if (( value/10==0 ))
 then
   echo ""
 else
 declare -a arr
 rev=0
 while [ $value -gt 0 ]
 do
   rem=$((value%10))
   rev=$((rev*10+rem))
   value=$((value/10))
 done 
 if (( rev==temp ))
 then
   cnt=0
   arr[$cnt]=$temp
   echo ${arr[*]}
 fi
 fi 
}
for (( i=1; i<101; i++ ))
do
 ar[$i]=$i

done
 echo ${ar[*]}

for (( i=1; i<101; i++ ))
do
echo $(pal $i )
done