#!/bin/sh

git add -f _site/release && git commit -m "latest release"
git subtree push --prefix _site/release origin release
