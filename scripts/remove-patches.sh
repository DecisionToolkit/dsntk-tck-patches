#!/usr/bin/env bash
 
WORK_DIR=$(pwd)

cd "$1" || exit 1

git restore .

git status -s

cd "$WORK_DIR" || exit 1
