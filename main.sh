#!/usr/bin/env bash
read -r n

steps=0
peak=$n

while (( n != 1 )); do
  if (( n % 2 == 0 )); then
    n=$(( n / 2 ))
  else
    n=$(( n * 3 + 1 ))
  fi
  (( steps++ ))
  if (( n > peak )); then
    peak=$n
  fi
done

echo "steps: $steps"
echo "peak: $peak"