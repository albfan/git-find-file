. sharness/sharness.sh

export GEM_PATH=$GEM_PATH:/home/alberto/.gem/ruby/2.2.0

if test "$COVERAGE" = "yes"
then
   COMMAND="$COV_PROGRAM git-find-file"
else
   COMMAND="git find-file"
fi

export COMMAND

git config --global user.email "you@example.com"
git config --global user.name "Name"
