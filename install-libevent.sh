#!/bin/bash

mkdir -p ~/usr/local
wget --no-check-certificate https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz -O libevent.tar.gz
tar -xvzf libevent.tar.gz
pushd libevent-2.0.22-stable
./configure --prefix="$HOME/usr/local" --disable-shared
make
make install
popd
rm libevent.tar.gz
rm -fr libevent-2.0.22-stable
