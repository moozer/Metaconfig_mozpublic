%#!/bin/sh

%header("##")

apt-key list | grep obs.kolabsys.com >> /dev/null

if [ ! "$?" = "0" ]; then
	echo inserting kolab apt keys
	wget http://obs.kolabsys.com:82/Kolab:/3.1/Debian_7.0/Release.key
	apt-key add Release.key
	rm -rf Release.key
	wget http://obs.kolabsys.com:82/Kolab:/3.1:/Updates/Debian_7.0/Release.key
	apt-key add Release.key
	rm -rf Release.key
else
	echo kolab apt keys already present
fi
