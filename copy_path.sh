#!/bin/bash

fn=$(echo "$@" | cut -f2)
echo -n "${fn}" | xclip
