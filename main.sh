#!/usr/bin/env bash
IFS= read -r line
set -f
set -- $line

verbose=0
name=none
count=1

while getopts ":vn:c:" opt; do
  case $opt in
    v) verbose=1 ;;
    n) name=$OPTARG ;;
    c) count=$OPTARG ;;
    :) echo "error: -$OPTARG needs a value"; exit 0 ;;
    \?) echo "error: unknown option -$OPTARG"; exit 0 ;;
  esac
done

shift $(( OPTIND - 1 ))

echo "verbose=$verbose name=$name count=$count rest=$*"