#! /bin/sh
name="eno1" # the name of the network interface
hostname="lsyworkstation"
inet=`ifconfig $name | grep "inet"`
ipv4=`echo "$inet" | grep -v "inet6" | awk '{print $2}'`
# ipv6=`wget 6.ipw.cn -q -O-`

echo $ipv4 $hostname >  ip2.txt # use '>' for cover

