#!/usr/bin/env bash
IFS= read -r name
read -r size

case "$name" in
  .*)                         kind="hidden" ;;
  *.jpg|*.jpeg|*.png|*.gif)   kind="image"  ;;
  *.sh|*.bash)                kind="script" ;;
  *.txt|*.md)                 kind="text"   ;;
  Makefile)                   kind="build"  ;;
  *)                          kind="other"  ;;
esac

if (( size < 100 )); then
  class="small"
elif (( size < 1000 )); then
  class="medium"
else
  class="large"
fi

echo "$kind $class"