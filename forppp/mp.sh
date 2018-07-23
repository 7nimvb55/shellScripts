#!/bin/sh
ifw=/sbin/ipfw
ncrn=01010

sysctl net.inet.ip.forwarding=1
sysctl net.inet.ip.redirect=1


sysctl net.inet6.ip6.forwarding=1
sysctl net.inet6.ip6.redirect=1


#Port numbers for jails
# for internet FTP, NS, HTTP, HTTPS, FTPS-DATA, FTPS
ncpn1='20,21,22,53,80,443,989,990'
# NS, HTTP, HTTPS
ncpn2='53,80,443'
# NS, HTTP, HTTPS, FTPS
ncpn3='53,80,443,989,990'
EIFACE=ue0
ncCurNum0=10
ncCurNum1=`od -An -N2 -i /dev/random | sed -e 's/ //g' | \
                        awk '{ print $1 % 254 }'`
ncCurNum2=`od -An -N2 -i /dev/random | sed -e 's/ //g' | \
                        awk '{ print $1 % 254 }'`
ncCurNum3=`od -An -N2 -i /dev/random | sed -e 's/ //g' | \
                        awk '{ print $1 % 254 }'`
newip=`echo ${ncCurNum0}'.'${ncCurNum1}'.'${ncCurNum2}'.'${ncCurNum3}`

echo 'ip for ue0 '${newip}'/28'

ifconfig ${EIFACE} inet ${newip}'/28'

ifconfig ue0

${ifw} 200 delete
${ifw} 300 delete
${ifw} 400 delete
${ifw} 500 delete
${ifw} 600 delete
${ifw} 700 delete


${ifw} 0512 add allow ipv6-icmp from any to any
${ifw} 0518 add allow ip6 from any to any
${ifw} 0520 add allow icmp from any to any
${ifw} 0525 add allow udp from any to any
${ifw} 0530 add allow tcp from any to any
${ifw} 0532 add allow ip from any to any
${ifw} 0534 add allow ip from any to any
${ifw} 0535 add allow ip from any to any

${ifw} 00400 add reset log logamount 10 tcp from any to any in recv via ue0 
${ifw} 00500 add deny log logamount 10 ip from any to 10.0.0.0/8 in via ue0 setup
${ifw} 00600 add allow log logamount 10 ip from 10.0.0.0/8 to any 20,21,22,53,80,989,990,443 out via ue0
${ifw} 00700 add allow log logamount 10 ip from any 20,21,22,53,80,989,990,443 to 10.0.0.0/8 in via ue0


#${ifw} 200 add reset log logamount 10 tcp from any to ${newip} in recv
#${ifw} 300 add deny log logamount 10 ip from any to ${newip} in setup
#${ifw} 400 add allow log logamount 10 ip from ${newip} to any ${ncpn1} out via ${EIFACE}
#${ifw} 500 add allow log logamount 10 ip from any ${ncpn1} to ${newip} in via ${EIFACE}
#${ifw} 600 add allow log logamount 10 ip from ${newip} to any ${ncpn1} in via ${EIFACE}
#${ifw} 700 add allow log logamount 10 ip from any ${ncpn1} to ${newip} in via ${EIFACE}

route delete default
route add default ${newip}


