#!/bin/bash

fn=$(echo "$@" | cut -f2)

mimeopen -d "${fn}"
