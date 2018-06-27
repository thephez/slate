#!/usr/bin/env bash
set -o errexit #abort if any command fails

git checkout dashcore/v0.12.2
rm -rf master/v0.12.2
bundle exec middleman build --clean --verbose
cp -R build/ master/v0.12.2

git checkout dashcore/v0.12.3
rm -rf master/v0.12.3
bundle exec middleman build --clean --verbose
cp -R build/ master/v0.12.3

git checkout docs-dashcore
rm -rf master/current
bundle exec middleman build --clean --verbose
cp -R build/ master/current
