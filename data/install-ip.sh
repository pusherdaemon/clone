#!/bin/bash

# Squid Installer
# Author: https://www.ServerOk.in
# Email: admin@ServerOk.in
# Github: https://github.com/serverok/squid-proxy-installer

/bin/rm -rf /etc/squid
/usr/bin/apt update
/usr/bin/apt -y install apache2-utils squid
touch /etc/squid/passwd
/bin/rm -f /etc/squid/squid.conf
/usr/bin/touch /etc/squid/blacklist.acl
/usr/bin/wget --no-check-certificate -O /etc/squid/squid.conf https://raw.githubusercontent.com/serverok/squid-proxy-installer/master/squid-ip.conf

/bin/sed -i 's/WHITE_LISTED_IP_ADDR/MY_IP_ADDR/g' /etc/squid/squid.conf

systemctl enable squid
