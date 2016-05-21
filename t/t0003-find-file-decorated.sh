#!/bin/sh

SHARNESS_TEST_EXTENSION="sh"

test_description="Find files decorated"

. ./setup.sh

test_expect_success "find a file decorated" '
    git init
    export COVERAGE_NAME=exclude
    cp ../.simplecov .
    touch file1
    git add .
    git commit -m "first commit"
    touch file2
    git add .
    git commit -m "second commit"
    rm .simplecov
    test "" != $($COMMAND file2)
'

test_expect_sucess "not find a file decorated" '
    git init
    export COVERAGE_NAME=exclude
    cp ../.simplecov .
    touch file1
    git add .
    git commit -m "first commit"
    touch file2
    git add .
    git commit -m "second commit"
    rm .simplecov
    test "" == "$($COMMAND file3)"
'

test_done
