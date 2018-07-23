#!/bin/sh
ifw=/sbin/ipfw
${ifw} 01000 add reset log logamount 10 tcp from any to any in recv via tun0 
${ifw} 01010 add deny log logamount 10 ip from any to 10.0.0.0/8 in via tun0 setup
${ifw} 01040 add allow log logamount 10 ip from 10.0.0.0/8 to any 20,21,22,53,80,989,990,443 out via tun0
${ifw} 01090 add allow log logamount 10 ip from any 20,21,22,53,80,989,990,443 to 10.0.0.0/8 in via tun0
ppp -ddial mts
