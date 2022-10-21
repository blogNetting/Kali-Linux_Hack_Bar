#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "tun0" ]; then
        echo -n ☠  
        echo -n "  $(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')    "
        echo "$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')" > /home/kali/.config/panels/ip_vpn
	IP="$(/usr/sbin/ifconfig tun0 | grep 'inet ' | awk '{print $2}')"
	if [ IP="" ]; then
		IFACE=$(/usr/sbin/ifconfig | grep tun1 | awk '{print $1}' | tr -d ':')
		if [ "$IFACE" = "tun1" ]; then
			echo "$(/usr/sbin/ifconfig tun1 | grep 'inet ' | awk '{print $2}')" > /home/kali/.config/panels/ip_vpn
			echo "  $(/usr/sbin/ifconfig tun1 | grep 'inet ' | awk '{print $2}')    "
		fi
	fi
else
        echo "    ⚠  Disconnected    "
fi
