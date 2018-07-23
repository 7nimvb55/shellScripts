#!/bin/sh
sleep 3
wd=/root/work/forstartup
ct=`date '+%y-%m-%d_%H%M%S'`
dnum=`/usr/sbin/usbconfig | /usr/bin/grep\
 'vendor 0x8086 product 0x0189' | /usr/bin/awk\
 '{match($1,/ugen[0-9].[0-9]+/);\
 print substr($1, RSTART, RLENGTH)}'`
/usr/sbin/usbconfig -d `/usr/sbin/usbconfig\
 | /usr/bin/grep 'vendor 0x8086 product 0x0189'\
 | /usr/bin/awk '{match($1,/ugen[0-9].[0-9]+/);\
 print substr($1, RSTART, RLENGTH)}'` power_off
mkdir -p ${wd}/log
/usr/sbin/usbconfig -d ${dnum} | tee -ai $wd/log/${dnum}_${ct}.log
