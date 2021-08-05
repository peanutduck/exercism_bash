#!/usr/bin/env bash

# echo "10+20 >= 5" | bc   ---> 1
# bc <<< "10+20 >= 5"      ---> 1

#if (($(bc <<<"$2 + $3 <= $4 || $3 + $4 <= $2 || $4 + $2 <= $3"))); then
#    echo false
#    exit
#fi
(($(bc <<<"$2 + $3 <= $4 || $3 + $4 <= $2 || $4 + $2 <= $3"))) && echo false && exit

if [[ $1 == equilateral ]]; then
    #(($(bc <<<"$2 == $3 && $3 == $4"))) && echo true || echo false
    [[ $2 == $3 && $3 == $4 ]] && echo true || echo false
elif [[ $1 == isosceles ]]; then
    #(($(bc <<<"$2 == $3 || $3 == $4 || $4 == $2"))) && echo true || echo false
    [[ $2 == $3 || $3 == $4 || $4 == $2 ]] && echo true || echo false
elif [[ $1 == scalene ]]; then
    #(($(bc <<<"$2 != $3 && $3 != $4 && $4 != $2"))) && echo true || echo false
    [[ $2 != $3 && $3 != $4 && $4 != $2 ]] && echo true || echo false
fi

