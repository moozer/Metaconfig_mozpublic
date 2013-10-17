%#/bin/sh

%header("##")

PAMFILE="/etc/pam.d/common-account"
LINETOADD="session    required   pam_mkhomedir.so skel=/etc/skel/ umask=0022"

%# appending pam_mkhomedir if it does not already exist

grep pam_mkhomedir $PAMFILE > /dev/null
if [ "$?" = "1" ]; then
	echo "adding pam_mkhomedir to $PAMFILE"
	echo $LINETOADD >> $PAMFILE
else
	echo "pam_mkhomedir already in $PAMFILE"
fi
