#!/usr/bin/env bash

# Current working directory.
WORK_DIR=$(pwd)

cd "$1" || exit 1

git restore .

##################################################################################################
# Apply patches.

git apply "$WORK_DIR/patches/compliance-level-3/0089/0089-nested-inputdata-imports.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1111/1111-feel-matches-function.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1115/1115-feel-date-function-test-01.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1117/1117-feel-date-and-time-function-test-01.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1141/1141-feel-round-up-function.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1142/1142-feel-round-down-function.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1143/1143-feel-round-half-up-function.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1144/1144-feel-round-half-down-function.patch"

##################################################################################################
# Remove non-compliant tests from the directory tree.

rm -rf TestCases/non-compliant

##################################################################################################

git status -s

cd "$WORK_DIR" || exit 1
