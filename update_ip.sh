#! /bin/sh
name="wlp0s20f3" # the name of the network interface
hostname="lenovo-air14"
inet=`ifconfig $name | grep "inet"`
ipv4=`echo "$inet" | grep -v "inet6" | awk '{print $2}'`
ipv6=`wget 6.ipw.cn -q -O-`

# output for LAN
echo $ipv4 $hostname >  ip2.txt # use '>' for cover
echo $ipv6 $hostname >> ip2.txt # use '>>' for append

# output for WAN
echo $ipv6 $hostname > ip_global2.txt # use '>>' for append
