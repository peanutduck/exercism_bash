#!/usr/bin/env bash

# Only accepts 1 arg and must and an Int
if [ "$#" -ne 1 ] || ! [[ $1 =~ ^[[:digit:]]+$ ]]; then
    echo "Usage: leap.sh <year>"
    exit 1
fi

# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400

(( !($1 %4) && $1 %100 || !($1 %400) )) && echo "true" || echo "false"


#(($1%4==0 && ($1%100 || $1%400==0))) || t=" not"
#echo "This is$t a leap year."
