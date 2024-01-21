#!/bin/zsh

BASEDIR=$(dirname $0)
cd $BASEDIR

cp ./pre-commit ../.git/hooks/pre-commit
chmod a+x ../.git/hooks/pre-commit
