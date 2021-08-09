#!/usr/bin/env bash

num=${1// /}                                                        # removes space
[[ $num =~ ^[0-9]+$ ]] || { echo false ; exit 0; }                  # checks if only number
! [ ${#num} -lt 2 ] || { echo false ; exit 0 ; }                    # check lengths of number

rev_num=$(echo $num | rev)                                          # reverse the numbers

counter=1               
total=0
for x in $(echo $rev_num | grep -o .); do
    ((x * 2 >= 10)) && y=$((x * 2 - 9)) || y=$((x * 2))
    ((counter % 2 == 0)) && ((total += $y)) || ((total += $x))
    ((counter++))
done


((total % 10 == 0)) && echo true || echo false
