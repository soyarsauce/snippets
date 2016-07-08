# http://askubuntu.com/a/394616

#/etc/sysctl.conf

#disable ipv6
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
net.ipv6.conf.eth0.disable_ipv6 = 1

# sysctl -p 

# cat /proc/sys/net/ipv6/conf/all/disable_ipv6