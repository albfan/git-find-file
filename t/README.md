# test suite

This test suite is based on [sharness](http://mlafeldt.github.io/sharness/)

## install

It is installed (from toplevel dir) with:

    git subtree add --squash --prefix t/sharness https://github.com/mlafeldt/sharness master

and update from time to time with:

    git subtree pull --squah --prefix t/sharness master

Read http://blogs.atlassian.com/2013/05/alternatives-to-git-submodule-git-subtree/ for more info on git subtree, you can define a remote to simplify commands or contribute sharness from your fork

## automation

Although every test is executable by itself an only depends on sharness, that's not operative. this test suite relays on [autotools support for tap](https://www.gnu.org/software/automake/manual/html_node/Use-TAP-with-the-Automake-test-harness.html#Use-TAP-with-the-Automake-test-harness) to complete the test suite. Launch it with:

    make check
