#!/usr/bin/env bash

declare -A count
declare -a words

# normalize case
input="${1,,}"
# drop escaped newlines and apostrophes
input="${input//\\n/ }"
input="${input//\\\'/ }"
# drop anything not letters, numbers, or apostrophes
input=${input//[^0-9a-z\']/ }
# drop quotes around a word
input="${input//\' / }"
input="${input%%\'}"
input="${input// \'/ }"
input="${input##\'}"
# squash multiple spaces
input="${input// +/ }"


words=${input}

for word in ${words[@]}; do
   cur=${count[$word]:-0}
   count[$word]=$((cur + 1))
done

for i in "${!count[@]}"; do
  echo "$i: ${count[$i]}"
done
