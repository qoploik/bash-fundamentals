#!/usr/bin/env bash
IFS= read -r line

first=$(awk '{ print $1 }'  <<< "$line")
last=$(awk '{ print $NF }'  <<< "$line")
count=$(awk '{ print NF }'  <<< "$line")

echo "first=$first last=$last count=$count"