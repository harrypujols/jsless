#!/bin/sh

TIMESTAMP=$(date +%s)

jekyll build
mkdir dist
cp _site/release/* dist/
git add dist && git commit -m "push to release #{$TIMESTAMP}"
git subtree push --prefix dist origin release
git push origin `git subtree split --prefix dist master`:release --force
rm -rf dist
git add .
git commit -m "release completed #{$TIMESTAMP}"
git push
