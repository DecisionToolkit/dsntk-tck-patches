#!/usr/bin/env bash

# current working directory
WORK_DIR=$(pwd)

# time offset between UTC and the local time
OFFSET_PARIS=$(TZ=Europe/Paris date +%z)
OFFSET_MELBOURNE=$(TZ=Australia/Melbourne date +%z)

cd "$1" || exit 1

git restore .

########################################################################################################################

if [ "$OFFSET_PARIS" == "+0200" ]; then
  git apply "$WORK_DIR/patches/compliance-level-3/0068-feel-equality/0068-feel-equality.patch"
fi

git apply "$WORK_DIR/patches/compliance-level-3/0089-nested-inputdata-imports/0089-nested-inputdata-imports.patch"

if [ "$OFFSET_MELBOURNE" == "+1000" ]; then
  git apply "$WORK_DIR/patches/compliance-level-3/0103-feel-is-function/0103-feel-is-function.patch"
fi

git apply "$WORK_DIR/patches/compliance-level-3/1111-feel-matches-function/1111-feel-matches-function.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1141-feel-round-up-function/1141-feel-round-up-function.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1142-feel-round-down-function/1142-feel-round-down-function.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1143-feel-round-half-up-function/1143-feel-round-half-up-function.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1144-feel-round-half-down-function/1144-feel-round-half-down-function.patch"

########################################################################################################################

git status

cd "$WORK_DIR" || exit 1
