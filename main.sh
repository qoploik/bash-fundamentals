#!/usr/bin/env bash
set -euo pipefail

log=$(cat)

count=$(grep -ci 'error' <<< "$log" || true)
first=$(grep -i -m1 'error' <<< "$log" || true)

echo "errors: $count"
echo "first: ${first:-none}"