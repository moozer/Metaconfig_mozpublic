%#!/bin/sh

%header("##")

echo "This script inits the iscsi connection"

echo detecting all iqns on server
iscsiadm -m discovery -t st -p %(iscsitarget_host)

echo 
echo Restating service
service open-iscsi restart

echo removing other iqns
for iqn in $(iscsiadm -m node | cut -d ' ' -f 2- | grep -v "%(iqn)"); 
do
    iscsiadm -m node --op delete --targetname $iqn; 
done

echo
echo only the desired iqn should be listed now
iscsiadm -m node

echo 
echo Restating service
service open-iscsi restart
