#!/usr/bin/env bash

# remove non alphabets
words="${1//[^a-zA-Z\']/ }"

for i in $words; do
    acro+=${i:0:1}
done

# uppercase the whole word
echo ${acro^^}
