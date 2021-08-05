#!/usr/bin/env bash

#words="$1"
#a="${words//[^a|A]}"
#c="${words//[^c|C]}"
#g="${words//[^g|G]}"
#t="${words//[^t|T]}"

#sum=$((${#a}+${#c}+${#g}+${#t}))
#if [[ $sum -ne ${#words} ]]; then
#    echo "Invalid nucleotide in strand" 
#    exit 1
#fi

#echo "A: ${#a}"
#echo "C: ${#c}"
#echo "G: ${#g}"
#echo "T: ${#t}"

[[ $1 =~ [^ACTG] ]] && echo "Invalid nucleotide in strand" && exit 1

declare -A counts=([A]=0 [C]=0 [T]=0 [G]=0)

for n in $(echo $1 | grep -o .); do
    ((counts[$n]++))
done

printf "A: %d\nC: %d\nG: %d\nT: %d" ${counts['A']} ${counts['C']} ${counts['G']} ${counts['T']}
