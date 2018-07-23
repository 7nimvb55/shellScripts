#!/bin/sh
#echo 'sleep 30'
sleep 30
#echo 'tar'
tar -cj -hP -T /root/work/forarh/list -X /root/work/forarh/notbackup -f /tmp/backup.tar.bzip2
#echo 'openssl'
openssl enc -rc5-cbc -e -pass file:/root/work/forarh/pass  -in /tmp/backup.tar.bzip2 -out /usr/backup/b-`date +'%y-%m-%d_%H%M%S'`.rar
#echo 'rm'
rm /tmp/backup.tar.bzip2

