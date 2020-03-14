#!/usr/bin/env bash

set -ue

#unpack hugo release 
tar zxf hugo-release/hugo_*_Linux-64bit.tar.gz 
cp /hugo-release/hugo /usr/local/bin/hugo

hugo -c blog/ -d ../blog-deployment