#!/bin/sh

TIMESTAMP=`date "+%Y%m%d-%H%M%S"`

git add -f _site/release && git commit -m "release $TIMESTAMP"
git subtree push --prefix _site/release origin release
