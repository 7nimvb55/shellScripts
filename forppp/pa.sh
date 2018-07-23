#!/bin/sh
ifconfig ue0 inet 10.213.218.37/28
sleep 1
route flush
route add default 10.213.218.37
sleep 1
ifw=/sbin/ipfw
${ifw} 01700 add reset log logamount 10 tcp from any to any in recv via ue0 
${ifw} 01710 add deny log logamount 10 ip from any to 10.0.0.0/8 in via ue0 setup
${ifw} 01740 add allow log logamount 10 ip from 10.0.0.0/8 to any 20,21,22,53,80,989,990,443 out via ue0
${ifw} 01790 add allow log logamount 10 ip from any 20,21,22,53,80,989,990,443 to 10.0.0.0/8 in via ue0

