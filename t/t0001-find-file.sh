#!/bin/sh

SHARNESS_TEST_EXTENSION="sh"

test_description="Find files"

. ./setup.sh

test_expect_success "find a file" '
    git init
    export COVERAGE_NAME=find-file
    cp ../.simplecov .
    touch file1
    git add .
    git commit -m "first commit"
    rm .simplecov
    test "" != $($COMMAND file1)
'

test_expect_success "not find a file" '
    git init
    export COVERAGE_NAME=find-file
    cp ../.simplecov .
    touch file1
    git add .
    git commit -m "first commit"
    rm .simplecov
    test "" == "$($COMMAND file2)"
'

test_done
