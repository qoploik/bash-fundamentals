#!/usr/bin/env bash
IFS= read -r path

dir="${path%/*}"
file="${path##*/}"
name="${file%.*}"
ext="${file##*.}"

echo "dir: $dir"
echo "name: $name"
echo "ext: $ext"