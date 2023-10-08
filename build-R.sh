#!/usr/bin/env bash
set -x
RVERSION=$1
echo ${PWD}

if [ ! -d ${RVERSION} ]; then
    tar zxf ${HOME}/Downloads/${RVERSION}.tar.gz
fi

if [ ! -d bin ]; then
    INSTALL=${PWD}
    cd ${RVERSION}

    ./configure --prefix=${INSTALL} --enable-memory-profiling --enable-lto --enable-R-shlib

    make
    #make check
    make install
fi
