%#!/bin/sh

%header("##")

%#
%# script to add ipv4 things to 389 service
%#

USER="Directory Manager"

echo inserting relevant LDIF
echo please supply password for $USER 
ldapmodify -a -x -h localhost -p 389 -D cn="$USER" -W -f /etc/metaconfig/scripts/kolab-389-on-ipv4.ldif

echo restarting service
service dirsrv restart
service dirsrv-admin restart

