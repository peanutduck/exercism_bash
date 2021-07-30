#!/usr/bin/env bash


#[[ $1 < 1 || $1 > 64 ]] && echo 'Error: invalid input' && exit 1

#squares=$((2**(($1-1))))

#[[ $1 == 'total' ]] && printf '%u'

#echo ${squares#-}


case "$1" in
    total) printf '%u' -1;;
    [1-9]|[1-5][0-9]|6[0-4]) squares=$((2**(($1-1)))) ; echo ${squares#-} ;;
    *) printf 'Error: invalid input'; exit 1;;
esac
