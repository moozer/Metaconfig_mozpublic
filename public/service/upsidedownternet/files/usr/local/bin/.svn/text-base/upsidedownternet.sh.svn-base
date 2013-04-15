%#!/bin/zsh
%header("##")
##delete all rules
sudo iptables -F
sudo iptables -t nat -F
sudo iptables -t mangle -F
sudo iptables -X

## Enable routing.
echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward

## Masquerade.
sudo iptables -t nat -A POSTROUTING -j MASQUERADE

## Transparent proxying
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3128
