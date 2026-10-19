#!/usr/bin/env bash
export LC_ALL=C

cut -d' ' -f1 \
  | grep -xE 'ERROR|WARN|INFO' \
  | sort \
  | uniq -c \
  | sort -k1,1nr -k2,2 \
  | awk '{ print $2 ": " $1 }'