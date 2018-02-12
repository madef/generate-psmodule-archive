#!/bin/bash

# usage gma <module-name> <tag|branche>

dir=`pwd`
if [ -z ${GMA_REPO} ]; then repo_dir=$dir; else repo_dir=$GMA_REPO; fi
git clone git@github.com:madef/$1.git /tmp/.tmp-$1
cd /tmp/.tmp-$1
git fetch --all
git fetch --tags 
git checkout $2
git archive --format=zip --prefix=$1/ -9 $2 > $repo_dir/$1-v$2.zip

cd ..
rm -rf .tmp-$1

cd $dir
