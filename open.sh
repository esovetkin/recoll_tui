#!/bin/bash

urxvtc -e mimeopen $(echo "$@" | cut -f2)
