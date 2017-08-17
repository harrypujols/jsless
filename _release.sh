#!/bin/sh

TIMESTAMP=`date "+%Y%m%d-%H%M%S"`

mkdir release
cp _site/css/jsless.css release/jsless.css
git add -f release && git commit -m "release $TIMESTAMP"
git subtree push --prefix=release origin release
rm -rf release
