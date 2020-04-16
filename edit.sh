#!/bin/bash

fn=$(echo "$@" | cut -f2)
emacsclient -t "${fn}"
