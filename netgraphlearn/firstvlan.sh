#!/bin/sh
#
#
#
loc01=10.213.211.22
locvnet1=10.13.10.17/24
locvnet2=10.10.13.18/24
locvnet3=10.21.37.19/24
UDP_TUN_PORT=4038
#make ng0 interface ???
mkpeer iface dummy inet
#connect UDP socket to inet hook
mkpeer ng0: ksocket inet inet/dgram/udp
#name to new element
name [0001c]: ksock_ng0_udp