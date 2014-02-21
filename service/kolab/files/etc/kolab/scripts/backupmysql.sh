#!/bin/sh

BACKDIR="/tmp"

mysqldump -pmysql123 -A > $BACKDIR/$(hostname)-kolab.sql
