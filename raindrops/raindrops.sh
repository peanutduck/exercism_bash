#!/usr/bin/env bash

#(( $1 % 3 )) || result+=Pling
#(( $1 % 5 )) || result+=Plang
#(( $1 % 7 )) || result+=Plong


(( $1 % 3 == 0 )) && result+=Pling
(( $1 % 5 == 0 )) && result+=Plang
(( $1 % 7 == 0 )) && result+=Plong

echo ${result:-$1}
