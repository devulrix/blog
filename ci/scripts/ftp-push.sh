#!/usr/bin/env bash

set -ue

#connect to ftp server 

ls blog-deployment

lftp -e "mirror -R blog-deployment test" -u $FTP_USERNAME,$FTP_PASSWORD $FTP_SERVER