#!/bin/sh
ct=`date '+%y-%m-%d_%H%M%S'`
daemon -o /root/work/forjail/log/mtree${ct}.out -u root -t mtree${ct}  mtree -c -x -K cksum -K md5digest -K sha256digest -p /usr/toussrlm/mrod/ > /root/work/forjail/log/mtree_mrod_${ct}.out
