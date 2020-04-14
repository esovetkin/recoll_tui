#!/bin/bash

query="$1"

src_dir=$(dirname $(realpath "$0"))

echo "${@:2}" | gawk -f "${src_dir}/preview.awk"

fn=$(echo "$@" | cut -f2)

if [ $(file -b --mime-type "${fn}") == "application/pdf" ]
then
    pdfgrep --color always -n -i "${query}" "${fn}"
fi
