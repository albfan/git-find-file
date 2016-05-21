#!/bin/sh

SHARNESS_TEST_EXTENSION="sh"

test_description="Find files verbose"

. ./setup.sh

test_expect_success "find a file verbose" '
    git init
    export COVERAGE_NAME=exclude
    cp ../.simplecov .
    touch file1
    git add .
    git commit -m "first commit"
    rm .simplecov
    test "" != "$($COMMAND -v file1)"
'

test_expect_sucess "not find a file verbose" '
    git init
    export COVERAGE_NAME=exclude
    cp ../.simplecov .
    touch file1
    git add .
    git commit -m "first commit"
    rm .simplecov
    test "" == "$($COMMAND -v file2)"
'

test_done
