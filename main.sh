#!/usr/bin/env bash
# Print the greeting, then pass the input through.
IFS= read -r project
IFS= read -r version
name="${project}_v${version}"
echo "${name}.tar"
echo "${name}/"