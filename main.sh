#!/usr/bin/env bash
IFS= read -r pattern
IFS= read -r text

grep -q -e "$pattern" <<< "$text" 2>/dev/null
status=$?

case $status in
  0) verdict="match" ;;
  1) verdict="no match" ;;
  *) verdict="error" ;;
esac

echo "$status: $verdict"