#!/bin/sh
/usr/sbin/daemon -o /root/work/forppp/log/dl`date '+%y-%m-%d_%H%M%S'`.out -u root -t dlPorts /bin/sh /root/work/forppp/dlsrcbl.sh
