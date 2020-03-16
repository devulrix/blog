#!/usr/bin/env bash

set -ue

#connect to ftp server 

ls blog-deployment

lftp -c "open  -u $FTP_USERNAME,$FTP_PASSWORD $FTP_SERVER; mirror -R blog-deployment test"