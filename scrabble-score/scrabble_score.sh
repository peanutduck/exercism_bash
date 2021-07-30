#!/usr/bin/env bash

for i in $(echo ${1^^} | grep -o .); do
    [[ $i =~ [AEIOULNRST] ]] && ((score+=1)) && continue
    [[ $i =~ [DG] ]] && ((score+=2)) && continue
    [[ $i =~ [BCMP] ]] && ((score+=3)) && continue
    [[ $i =~ [FHVWY] ]] && ((score+=4)) && continue
    [[ $i =~ [K] ]] && ((score+=5)) && continue
    [[ $i =~ [JX] ]] && ((score+=8)) && continue
    [[ $i =~ [QZ] ]] && ((score+=10)) && continue
done
    
echo ${score:-0}
    
