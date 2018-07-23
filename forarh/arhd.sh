#!/bin/sh
cd /root/work/forarh
daemon -o log/arh`date '+%y-%m-%d_%H%M%S'`.out -u root -t arhAllBck sh aalb.sh
