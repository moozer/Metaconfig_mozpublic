%#!/bin/sh

%header("##")

BACKDIR=%(backup_dir)
SCRIPTDIR=$(dirname $(realpath $0))

%# check for existence of backup dir
if [ ! -d "$BACKDIR" ]; then
    mkdir $BACKDIR -p
fi

%# metaconfig
cd /etc/metaconfig/node
git push $BACKDIR/metaconfig_node.git

%# ldap
$SCRIPTDIR/backupldap.sh --before

%# mysql
$SCRIPTDIR/backupmysql.sh


