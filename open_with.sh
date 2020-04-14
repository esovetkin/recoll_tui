#!/bin/bash

urxvtc -e mimeopen -d $(echo "$@" | cut -f2)
