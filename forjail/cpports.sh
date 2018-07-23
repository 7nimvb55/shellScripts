#!/bin/sh
ct=`date '+%y-%m-%d_%H%M%S'`
daemon -o log/cpRpf${ct}.out -u root -t cp${ct}  cp -Rpf /usr/ports/* /usr/toussrlm/mrod/usr/ports
