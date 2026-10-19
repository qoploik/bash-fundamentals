#!/usr/bin/env bash
read -r -a words

declare -A count
order=()

for w in "${words[@]}"; do
  if [[ -z "${count[$w]}" ]]; then
    order+=("$w")
    count[$w]=0
  fi
  (( count[$w]++ ))
done

for w in "${order[@]}"; do
  echo "$w: ${count[$w]}"
done