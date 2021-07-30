#!/usr/bin/env bash

trap 'echo "false" && exit 0' SIGHUP
SENTENCE=${1^^*}

for LETTER in {A..Z}; do
    [[ $SENTENCE =~ $LETTER ]] || kill -1 $$
done

echo "true"


#[[ "" = $( echo "abcdefghijklmnopqrstuvwxyz" | sed "s/[${1,,} ]//g" ) ]] && echo "true" || echo "false"
