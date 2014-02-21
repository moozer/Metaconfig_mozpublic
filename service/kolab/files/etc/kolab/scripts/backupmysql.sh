%#!/bin/sh

%header("##")

BACKDIR=%(backup_dir)

if [ ! -e $BACKDIR ]; then
	mkdir -p $BACKDIR
fi

mysqldump -p%(mysqlpasswd) -A > $BACKDIR/$(hostname)-kolab.sql
