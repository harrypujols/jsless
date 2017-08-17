#!/bin/sh

git push origin `git subtree split --prefix _site/release master`:release --force
