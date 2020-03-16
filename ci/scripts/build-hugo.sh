#!/usr/bin/env bash

set -ue

#unpack hugo release 
echo "unpack & copy hugo"
tar zxf hugo-release/hugo_*_Linux-64bit.tar.gz 
mv hugo /usr/local/bin/hugo

echo "build static page"
cd blog
hugo 

echo "copy content to destination"
cp -R public/* ../blog-deployment