#!/bin/bash
#nmcli nm wifi off
#rfkill unblock wlan
ifconfig wlan0 10.10.0.1/24
iptables -t nat -A POSTROUTING -s 10.10.0.0/16 -o eth0 -j MASQUERADE
#service isc-dhcp-server start
systemctl start dnsmasq
hostapd /etc/hostapd/hostapd.conf

#langkah2
# sudo nmcli nm wifi off
# sudo rfkill unblock wlan
#1. Set ip address wlan0 __ sudo ifconfig wlan0 10.10.0.1/24
#2. iptables __ sudo iptables -t nat -A POSTROUTING -s 10.10.0.0/16 -o ppp0 -j MASQUERADE
#3. dhcp __ sudo service isc-dhcp-server start
#4. hostapd __ sudo hostapd /etc/hostapd/hostapd.conf
#ifconfig wlan0 10.10.0.1/24
#iptables -t nat -A POSTROUTING -s 10.10.0.0/16 -o ppp0 -j MASQUERADE
