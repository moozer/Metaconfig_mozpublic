#!/bin/bash

# Script to pull data from ldap server and place it in ldif files
# to enable file based backup
#
# originally from http://docs.kolab.org/administrator-guide/backup-and-restore.html

BACKDIR="/tmp"

if [ "$1" == "--before" ]; then
    for dir in `find /etc/dirsrv/ -mindepth 1 -maxdepth 1 -type d \
            -name "slapd-*" | xargs -n 1 basename`; do

        for nsdb in `find /var/lib/dirsrv/${dir}/db/ -mindepth 1 \
                -maxdepth 1 -type d | xargs -n 1 basename`; do

            ns-slapd db2ldif -D /etc/dirsrv/${dir} -n ${nsdb} \
                -a $BACKDIR/$(hostname)-$(echo ${dir} | sed -e 's/slapd-//g')-${nsdb}.ldif \
                >/dev/null 2>&1

        done
    done

elif [ "$1" == "--after" ]; then
    rm -rf $BACKDIR/*.ldif

else
    echo "Usage"
    echo "  $0 --before : dump data to temp files"
    echo "  $0 --after  : delete temp files"
fi
