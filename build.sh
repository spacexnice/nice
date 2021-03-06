#!/usr/bin/env bash
PRO_ROOT=$(pwd)
set -e -x
rm -rf $PRO_ROOT/build
mkdir -p $PRO_ROOT/build
go build -o $PRO_ROOT/build/nice $PRO_ROOT/cmd/roller/nice.go
cp -rf $PRO_ROOT/js $PRO_ROOT/build/js
cp -rf $PRO_ROOT/pages $PRO_ROOT/build/pages
cp -rf $PRO_ROOT/fonts $PRO_ROOT/build/fonts
cp -rf $PRO_ROOT/css $PRO_ROOT/build/css
cp -rf $PRO_ROOT/Dockerfile $PRO_ROOT/build/
cp -rf $PRO_ROOT/entrypoint.sh $PRO_ROOT/build/
cd $PRO_ROOT/build
tar cf ../nice.tar .
cd $PRO_ROOT
