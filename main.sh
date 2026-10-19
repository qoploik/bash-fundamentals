#!/usr/bin/env bash

is_prime() {
  local n=$1
  local d

  (( n < 2 )) && return 1

  for (( d = 2; d * d <= n; d++ )); do
    if (( n % d == 0 )); then
      return 1
    fi
  done
  return 0
}

read -r n
count=0

for (( i = 2; i <= n; i++ )); do
  if is_prime "$i"; then
    echo "$i"
    (( count++ ))
  fi
done

echo "count: $count"