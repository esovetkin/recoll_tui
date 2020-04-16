#!/bin/bash

fn=$(echo "$@" | cut -f2)
less "${fn}"
