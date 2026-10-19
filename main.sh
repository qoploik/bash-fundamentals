#!/usr/bin/env bash
IFS= read -r total

h=$(( total / 3600 ))
m=$(( total % 3600 / 60 ))
s=$(( total % 60 ))

echo "${h}h ${m}m ${s}s"