#!/bin/sh
ct=`date '+%y-%m-%d_%H%M%S'`
daemon -o log/cpRpn${ct}.out -u root -t cpRpn${ct}  cp -Rpn /usr/ports/distfiles/* /usr/toussrlm/mrod/usr/ports/distfiles
