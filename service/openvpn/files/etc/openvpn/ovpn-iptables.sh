%#!/bin/sh

%# simple IP tables script to handle forwarding

%header("##")

%# network params
LAN=%(lan_addr_cidr)
TUN=%(tun_addr_cidr)
TUNINT=%(tun_int)
LANINT=%(lan_int)


    %# Allow traffic initiated from VPN to access LAN
    iptables -I FORWARD -i $TUNINT -o $LANINT \
         -s $TUN -d $LAN \
         -m conntrack --ctstate NEW -j ACCEPT

    %# Allow established traffic to pass back and forth
    iptables -I FORWARD -m conntrack --ctstate RELATED,ESTABLISHED \
         -j ACCEPT


