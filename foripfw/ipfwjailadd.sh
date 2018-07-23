#!/bin/sh
ifc=/sbin/ipfw
${ifc} 0810 add allow log logamount 10 ip from 10.37.10.0/24 to 10.37.10.0/24 in
${ifc} 0820 add allow log logamount 10 ip from 10.37.10.0/24 to 10.37.10.0/24 out
${ifc} 0830 add allow log logamount 10 udp from 10.37.10.0/24 to 10.37.10.0/24 in
${ifc} 0840 add allow log logamount 10 udp from 10.37.10.0/24 to 10.37.10.0/24 out
${ifc} 0850 add allow log logamount 10 tcp from 10.37.10.0/24 to 10.37.10.0/24 in
${ifc} 0860 add allow log logamount 10 tcp from 10.37.10.0/24 to 10.37.10.0/24 out
${ifc} 0870 add allow log logamount 10 icmp from 10.37.10.0/24 to 10.37.10.0/24 in
${ifc} 0880 add allow log logamount 10 icmp from 10.37.10.0/24 to 10.37.10.0/24 out
#${ifc} 0990 add allow log logamount 10 ip from 10.37.10.17 to 10.37.10.1 in via re0
#${ifc} 0910 add allow log logamount 10 ip from 10.37.10.17 to 10.37.10.1 in via re0
#${ifc} 0910 add allow log logamount 10 ip from 10.37.10.17 to 10.37.10.1 in via re0
#${ifc} 0910 add allow log logamount 10 ip from 10.37.10.17 to 10.37.10.1 in via re0
#${ifc} 0910 add allow log logamount 10 ip from 10.37.10.17 to 10.37.10.1 in via re0
