%#!/bin/sh

%header("##")

DEBFILE="/tmp/davmail.deb"
DLLINK="http://downloads.sourceforge.net/project/davmail/davmail/4.3.4/davmail_4.3.4-2174-1_all.deb?r=http://sourceforge.net/projects/davmail/files/davmail/&ts=1381692315"

echo "downalod latest davmail"
wget "$DLLINK" -O $DEBFILE

echo "installing..."
dpkg -i $DEBFILE
