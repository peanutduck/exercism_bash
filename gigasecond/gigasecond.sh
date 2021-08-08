#!/usr/bin/env bash


epoch=$(date -u -d "$1" +%s)
add_giga=$((epoch + 1000000000))
date -u -Iseconds -d "@$add_giga" | cut -f1 -d+

