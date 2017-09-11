#!/bin/sh

mkdir dist
cp _site/release/* dist/
git subtree push --prefix dist origin release
# git push origin `git subtree split --prefix dist master`:release --force
rm -rf dist
