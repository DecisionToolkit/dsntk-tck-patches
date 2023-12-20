#!/usr/bin/env bash

# current working directory
WORK_DIR=$(pwd)

# time offset between UTC and the local time
OFFSET=$(date +%z)

cd "$1" || exit 1

git restore .

###############################################################################

# ┌────────────────────────────────────────┐
# │ Compliance level 2 patches             │
# └────────────────────────────────────────┘

git apply "$WORK_DIR/patches/compliance-level-2/0008-LX-arithmetic/0008-LX-arithmetic.patch"

git apply "$WORK_DIR/patches/compliance-level-2/0009-invocation-arithmetic/0009-invocation-arithmetic.patch"

# ┌────────────────────────────────────────┐
# │ Compliance level 3 patches             │
# └────────────────────────────────────────┘

git apply "$WORK_DIR/patches/compliance-level-3/0003-iteration/0003-iteration.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0004-lending/0004-lending.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0005-literal-invocation/0005-literal-invocation.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0007-date-time/0007-date-time.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0012-list-functions/0012-list-functions.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0014-loan-comparison/0014-loan-comparison.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0031-user-defined-functions/0031-user-defined-functions.dmn.patch"
git apply "$WORK_DIR/patches/compliance-level-3/0031-user-defined-functions/0031-user-defined-functions.xml.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0040-singlenestedcontext/0040-singlenestedcontext.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0041-multiple-nestedcontext/0041-multiple-nestedcontext.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0052-feel-exp-function/0052-feel-exp-function.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0053-feel-log-function/0053-feel-log-function.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0063-feel-stddev-function/0063-feel-stddev-function.patch"

if [ "$OFFSET" == "+0200" ]; then
  git apply "$WORK_DIR/patches/compliance-level-3/0068-feel-equality/0068-feel-equality.patch"
fi

git apply "$WORK_DIR/patches/compliance-level-3/0076-feel-external-java/0076-feel-external-java.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0084-feel-for-loops/0084-feel-for-loops.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0087-chapter-11-example/0087-chapter-11-example.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0089-nested-inputdata-imports/0089-nested-inputdata-imports.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0092-feel-lambda/0092-feel-lambda.patch"

git apply "$WORK_DIR/patches/compliance-level-3/0100-arithmetic/0100-arithmetic.patch"

if [ "$OFFSET" == "+0200" ]; then
  git apply "$WORK_DIR/patches/compliance-level-3/0103-feel-is-function/0103-feel-is-function.patch"
fi

git apply "$WORK_DIR/patches/compliance-level-3/1120-feel-duration-function/1120-feel-duration-function.patch"

git apply "$WORK_DIR/patches/compliance-level-3/1146-feel-context-put-function/1146-feel-context-put-function.patch"

# non compliant
git apply "$WORK_DIR/patches/non-compliant/0015-all-any/0015-all-any.patch"

git apply "$WORK_DIR/patches/non-compliant/0019-flight-rebooking/0019-flight-rebooking.patch"

git apply "$WORK_DIR/patches/non-compliant/0088-recursion/0088-recursion.patch"

###############################################################################

git status

cd "$WORK_DIR" || exit 1
