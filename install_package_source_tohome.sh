#!/bin/bash

packagename=$1
tar -xzf $packagename".tar.gz"
#tar -xzf $packagename""

cd $packagename

./configure --prefix=$HOME

make && make install
