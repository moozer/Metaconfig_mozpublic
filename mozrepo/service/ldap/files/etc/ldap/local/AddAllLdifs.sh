%#!/bin/sh

%header("##")

BASEDIR="/etc/ldap/local"
cd $BASEDIR

ADMINUSER="cn=admin,dc=%(",dc=".join(dn))"
PASSWDFILE="passwd"
LOCALINITFILE="local.init.ldif"

if [ ! -f $PASSWDFILE ]; then
	echo "No passwordfile found. generating $PASSWDFILE"
	date | md5sum | cut -f 1 -d " " > $PASSWDFILE
fi

PASSWD=$(cat $PASSWDFILE)
SUFFIX="dc=%(",dc=".join(dn))"
BACKEND="hdb"
BACKENDOBJECTCLASS="olcHdbConfig"

echo "using base slapd init config file from package"
cat /usr/share/slapd/slapd.init.ldif | \
	sed "s/\(.*\)@PASSWORD@\(.*\)/\1$PASSWD\2/" | \
	sed "s/\(.*\)@SUFFIX@\(.*\)/\1$SUFFIX\2/" | \
	sed "s/\(.*\)@BACKEND@\(.*\)/\1$BACKEND\2/" | \
	sed "s/\(.*\)@BACKENDOBJECTCLASS@\(.*\)/\1$BACKENDOBJECTCLASS\2/" \
	> $LOCALINITFILE


## echo "Adding all ldifs in directory: $BASEDIR"
##
##for f in $(ls *.ldif); do
##	echo adding $f
##	##ldapadd -x -w $PASSWD -D "$ADMINUSER" -f $f
##	ldapadd -Y EXTERNAL -H ldapi:/// -f $f
##done

for f in $LOCALINITFILE; do
      echo adding $f
      ldapadd -Y EXTERNAL -H ldapi:/// -f $f
done

