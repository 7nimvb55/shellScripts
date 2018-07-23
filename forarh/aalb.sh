#!/bin/sh
cd /root/work/forarh
sleep 3
sh /root/work/forarh/writehashespath.sh /etc etc
sh /root/work/forarh/writehashespath.sh /root root
sh /root/work/forarh/writehashespath.sh /usr/src usr_src
sh /root/work/forarh/writehashespath.sh /usr/bin usr_bin
sh /root/work/forarh/writehashespath.sh /usr/sbin usr_sbin
sh /root/work/forarh/writehashespath.sh /usr/local usr_local
sh /root/work/forarh/writehashespath.sh /boot boot
#sh /root/work/forarh/writehashespath.sh /usr/toussrlm toussrlm
#sh /root/work/forarh/writehashespath.sh /usr/tulmsl tolmsl
#echo 'sleep 30'
sleep 3
#echo 'tar'
tar -cj -hP -T /root/work/forarh/list -X /root/work/forarh/notbackup -f /tmp/backup.tar.bzip2
#echo 'openssl'
backfilename=`date +'%y-%m-%d_%H%M%S'`
openssl enc -rc5-cbc -e -pass file:/root/work/forarh/pass  -in /tmp/backup.tar.bzip2 -out /usr/backup/b-${backfilename}.rar
#echo 'rm'
rm /tmp/backup.tar.bzip2
rm /usr/backup/lastbackup.rar
cp /usr/backup/b-${backfilename}.rar /usr/backup/lastbackup.rar

