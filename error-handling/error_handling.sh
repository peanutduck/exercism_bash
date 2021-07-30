#!/usr/bin/env bash

[[ $# -eq 1 ]] && echo "Hello, $1" && exit 0
echo "Usage: error_handling.sh <person>" && exit 1

