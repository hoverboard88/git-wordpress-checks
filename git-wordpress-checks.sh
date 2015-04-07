#!/bin/sh

# If there are whitespace errors, print the offending file names and fail.
# exec git diff-index --check --cached $against --

# pull all submodules first
git submodule foreach git pull

wd=$PWD

# check PHP
$wd/git-wordpress-checks/pre-commit-php/pre_commit_hooks/php-cs.sh
$wd/git-wordpress-checks/pre-commit-php/pre_commit_hooks/php-lint.sh
