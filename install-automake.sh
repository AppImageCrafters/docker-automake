#! /bin/bash

wget https://ftp.gnu.org/gnu/automake/automake-$AUTOMAKE_VERSION.tar.gz -O- | tar xz

cd automake-$AUTOMAKE_VERSION

./configure --prefix=/usr/local/

make all -j$(nproc)
make install

cd ..

rm -rf automake-$AUTOMAKE_VERSION/
