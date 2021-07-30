#!/usr/bin/env bash

set -o noglob

[ "$#" -ne 2 ] && echo 'Usage: hamming.sh <string1> <string2>' && exit 1

[ "${#1}" -ne "${#2}" ] && echo 'left and right strands must be of equal length' && exit 1

distance=0
for (( i=0; i<${#1}; i++ )); do
    [ ${1:$i:1} == ${2:$i:1} ] || ((distance++))
done

echo "$distance"
