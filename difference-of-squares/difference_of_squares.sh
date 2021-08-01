#!/usr/bin/env bash

INPUT=$2

sum_of_squares=$((($INPUT*($INPUT + 1)*(2*$INPUT + 1))/6))

square_of_sum=$(((($INPUT*($INPUT + 1)/2))**2))

if [ $1 == "sum_of_squares" ]
    then echo "$sum_of_squares"
elif [ $1 == "square_of_sum" ]
    then echo "$square_of_sum"
elif [ $1 == "difference" ]
    then echo $(($square_of_sum - $sum_of_squares))
fi
