#!/usr/bin/env bash

set -ue

#unpack hugo release 
tar zxf hugo-release/hugo_*_Linux-64bit.tar.gz 
cp hugo /usr/local/bin/hugo

pwd
ls

hugo -s blog/ -d blog-deployment