#!/bin/bash

urxvtc -e emacsclient -t $(echo "$@" | cut -f2)
