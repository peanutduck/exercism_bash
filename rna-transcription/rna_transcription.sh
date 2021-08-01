#!/usr/bin/env bash

#    +-----+-----+
#    | DNA | RNA |
#    +-----+-----+
#    | G   | C   |
#    | C   | G   |
#    | T   | A   |
#    | A   | U   |
#    +-----+-----+

# alphabets not in [^GCTA]
if [[ $1 =~ [^GCTA] ]]; then
  echo "Invalid nucleotide detected."
  exit 1
fi

# tr will do mapping between character eg, echo G | tr G C --- > C
echo $1 | tr GCTA CGAU
