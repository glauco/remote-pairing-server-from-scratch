#!/bin/bash

mkdir -p "$HOME/usr/local"
wget --no-check-certificate ftp://ftp.gnu.org/pub/gnu/emacs/emacs-25.1.tar.gz -O emacs.tar.gz
tar -xvzf emacs.tar.gz
pushd emacs-25.1
./configure --prefix="$HOME/usr/local" --with-x-toolkit=no --with-gif=no --with-tiff=no
make
make install
popd
rm emacs.tar.gz
rm -rf emacs-25.1

curl --insecure -L https://github.com/syl20bnr/spacemacs/archive/master.zip > spacemacs.zip
unzip spacemacs.zip

rm -fr "$HOME/.emacs"
rm -fr "$HOME/.emacs.d"

mv spacemacs-master "$HOME/.emacs.d"
