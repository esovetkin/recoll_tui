#!/bin/bash

urxvtc -e less $(echo "$@" | cut -f2)
