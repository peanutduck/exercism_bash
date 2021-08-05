#!/usr/bin/env bash

(($(bc <<<"$2 + $3 <= $4 || $3 + $4 <= $2 || $4 + $2 <= $3"))) && echo false && exit

if [[ $1 == equilateral ]]; then
    [[ $2 == $3 && $3 == $4 ]] && echo true || echo false
elif [[ $1 == isosceles ]]; then
    [[ $2 == $3 || $3 == $4 || $4 == $2 ]] && echo true || echo false
elif [[ $1 == scalene ]]; then
    [[ $2 != $3 && $3 != $4 && $4 != $2 ]] && echo true || echo false
fi

