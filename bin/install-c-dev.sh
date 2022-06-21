#!/bin/bash
# Installs a symbolic link from ~/dev to /c/dev to replicate
# the common Windows location of dev projects.

mkdir /c/
cd /c/
ln -s ~/dev/ dev
