#!/bin/zsh

BASEDIR=$(dirname $0)
cd $BASEDIR

touch ../.git/hooks/pre-commit
chmod a+x ../.git/hooks/pre-commit
