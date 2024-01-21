#!/bin/zsh

BASEDIR=$(dirname $0)
cd $BASEDIR

git config core.commentChar ';'
git config commit.template git-configs/commit-template
git config core.hooksPath ./hooks

chmod -R +x ./hooks
