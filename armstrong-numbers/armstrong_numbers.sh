#!/usr/bin/env bash

#total=0
#for num in $( echo $1 | grep -o . ); do
#    ((total+=$num**${#1}))
#done


total=0
#for num in $(seq 0 $((${#1}-1))); do
for num in {0..${#1}}; do
    echo $num
    #((total+=${1:$num:1}**${#1}))
done

#[ $total -eq $1 ] && echo "true" ||  echo "false" 
