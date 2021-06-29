#!/bin/bash
# A Simple Shell Script To Install MCSim v6.1.0

wget http://ftp.gnu.org/gnu/mcsim/mcsim-6.1.0.tar.gz
tar -xzvf mcsim-6.1.0.tar.gz
rm mcsim-6.1.0.tar.gz
(
  cd mcsim-6.1.0
  ./configure --prefix=/cloud/project/mcsim
  make
  make check
  make install
)
export PATH=$PATH:/cloud/project/mcsim/bin
# can use `echo "$PATH"` to check PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/cloud/project/mcsim/lib
rm -rf mcsim-6.1.0
