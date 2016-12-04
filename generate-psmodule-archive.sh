#!/bin/bash

# usage gma <module-name> <tag|branche>

dir=`pwd`
git clone https://github.com/madef/$1.git .tmp-$1
cd .tmp-$1
git fetch --all
git fetch --tags 
git checkout $2
git archive --format=zip --prefix=$1/ -9 $2 > $dir/$1-v$2.zip

cd ..
rm -rf .tmp-$1
